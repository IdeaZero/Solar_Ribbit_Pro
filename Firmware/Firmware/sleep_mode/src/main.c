/*
 * Copyright (c) 2021 Nordic Semiconductor ASA
 *
 * SPDX-License-Identifier: LicenseRef-Nordic-5-Clause
 */

 #include <string.h>
 #include <zephyr/kernel.h>
 #include <stdio.h>
 #include <stdlib.h>
 #include <nrf_modem_at.h>
 #include <modem/nrf_modem_lib.h>
 #include <modem/at_monitor.h>
 #include <modem/modem_info.h>
 
 #include <zephyr/drivers/gpio.h>
 #define GPIO0_NODE DT_NODELABEL(gpio0)
 static const uint8_t gpio_pins[] = {
    29, 26, 10, 12, 18, 19, 9, 27, 28, 8, 7, 20
};

 static void configure_gpio_pin_as_low(void)
 {
    int ret;
    const struct device *gpio_dev;
    gpio_dev = DEVICE_DT_GET(GPIO0_NODE);
    if (!device_is_ready(gpio_dev)) {
        printk("Error: device %s is not ready\n", gpio_dev->name);
        return;
    }
 
        /* Configure the pin as output */
        ret = gpio_pin_configure(gpio_dev, 29, GPIO_OUTPUT);
        if (ret != 0) {
            printk("Error %d: Failed to configure pin\n", ret);
            return;
        }

        for (size_t i = 0; i < ARRAY_SIZE(gpio_pins); i++) {
            ret = gpio_pin_configure(gpio_dev, gpio_pins[i], GPIO_INPUT | GPIO_PULL_DOWN);
            if (ret < 0) {
                printk("Failed to configure P0.%d as input with pull-down, error: %d\n", gpio_pins[i], ret);
            } else {
                printk("Configured P0.%d as input with pull-down\n", gpio_pins[i]);
            }

                    // Set the pin to low (0)
        ret = gpio_pin_set(gpio_dev, gpio_pins[i], 0);
        if (ret != 0) {
            printk("Error %d: Failed to set P0.%d to low\n", ret, gpio_pins[i]);
        } else {
            printk("P0.%d set to low\n", gpio_pins[i]);
        }
        }

 }
 static int psm_control(int enable)
 {
     return nrf_modem_at_printf("AT+CPSMS=%d", enable ? 1 : 0);
 }
 
 static void psm_read(void)
 {
     int ret;
     int psm_enabled;
     char request_periodic_tau[8];
     char request_active_time[8];
 
     printk("Reading PSM info...\n");
     ret = nrf_modem_at_scanf("AT+CPSMS?",
         "+CPSMS: "
             "%d"	/* enabled */
             ","	/* Requested_Periodic-RAU, ignored */
             ","	/* Requested_GPRS-READY-timer, ignored */
         ",\"%8[0-1]\""	/* Requested_Periodic-TAU */
         ",\"%8[0-1]\"",	/* Requested_Active-Time */
         &psm_enabled,
         request_periodic_tau,
         request_active_time
     );
 
     if (ret < 0) {
         printk("Could not parse PSM data, err %d\n", ret);
         return;
     }
 
     if (ret > 0) { /* One param matched */
         printk("  PSM: %s\n", psm_enabled ? "enabled" : "disabled");
     }
     if (ret > 1) { /* Two params matched */
         printk("  Periodic TAU string: %.*s\n",
                sizeof(request_periodic_tau), request_periodic_tau);
     }
     if (ret > 2) {  /* Three params matched */
         printk("  Active time string: %.*s\n",
             sizeof(request_active_time), request_active_time);
     }
 }

 int main(void)
 {
     int err;
 
     printk("AT Monitor sample started\n");
 
     err = nrf_modem_lib_init();
     if (err) {
         printk("Modem library initialization failed, error: %d\n", err);
         return 0;
     }
     configure_gpio_pin_as_low();
     nrf_modem_lib_shutdown();
     printk("Bye\n");

     sys_poweroff();
     return 0;
 }
 