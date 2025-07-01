#include <zephyr/kernel.h>

#include <zephyr/drivers/gpio.h>

#include <zephyr/logging/log.h>
#define LOG_MODULE_NAME main
LOG_MODULE_REGISTER(LOG_MODULE_NAME, CONFIG_LOG_DEFAULT_LEVEL);

#define DELAY_MS 5000 // Define 5000 ms as a macro

#define LED0_NODE DT_ALIAS(led0)
#define LED1_NODE DT_ALIAS(led1)
#define LED2_NODE DT_ALIAS(led2)
#define LED3_NODE DT_ALIAS(led3)

static const struct gpio_dt_spec boost_5v = GPIO_DT_SPEC_GET(LED0_NODE, gpios);
static const struct gpio_dt_spec boost_3v3 = GPIO_DT_SPEC_GET(LED1_NODE, gpios);
static const struct gpio_dt_spec load_enable = GPIO_DT_SPEC_GET(LED2_NODE, gpios);
static const struct gpio_dt_spec battery_adc_enable = GPIO_DT_SPEC_GET(LED3_NODE, gpios);

int main(void)
{
    int ret;

    if (!device_is_ready(boost_5v.port))
    {
        LOG_ERR("boost 5v pin not ready");
        // return; // Or handle the error appropriately
    }

    // boost_5v power pin config
    ret = gpio_pin_configure_dt(&boost_5v, GPIO_OUTPUT_ACTIVE);
    if (ret < 0)
    {
        LOG_ERR("Error configuring boost 5v (err %d)", ret);
        // return; // Or handle the error appropriately
    }
    // boost_3v3 power pin config
    if (!device_is_ready(boost_3v3.port))
    {
        LOG_ERR("boost 3v3 pin not ready");
        // return; // Or handle the error appropriately
    }
    ret = gpio_pin_configure_dt(&boost_3v3, GPIO_OUTPUT_ACTIVE);
    if (ret < 0)
    {
        LOG_ERR("Error configuring boost 3v3 (err %d)", ret);
        // return; // Or handle the error appropriately
    }
    // load_enable pin config
    if (!device_is_ready(load_enable.port))
    {
        LOG_ERR("load_enablenot ready");
        // return; // Or handle the error appropriately
    }
    ret = gpio_pin_configure_dt(&load_enable, GPIO_OUTPUT_ACTIVE);
    if (ret < 0)
    {
        LOG_ERR("Error configuring load_enable (err %d)", ret);
        // return; // Or handle the error appropriately
    }
    // battery_adc_enable pin config
    if (!device_is_ready(battery_adc_enable.port))
    {
        LOG_ERR("battery_adc_enable not ready");
        // return; // Or handle the error appropriately
    }

    ret = gpio_pin_configure_dt(&battery_adc_enable, GPIO_OUTPUT_ACTIVE);
    if (ret < 0)
    {
        LOG_ERR("Error configuring battery_adc_enable (err %d)", ret);
        // return; // Or handle the error appropriately
    }

    LOG_INF("nRF9151 DK GPIO Example");
    // Reset all pins to a default state (low/off)
    LOG_INF("Resetting all GPIO pins to default state");
    gpio_pin_set_dt(&boost_5v, 0);
    gpio_pin_set_dt(&boost_3v3, 0);
    gpio_pin_set_dt(&load_enable, 0);
    gpio_pin_set_dt(&battery_adc_enable, 0);
    while (1)
    {
        // // Enable and disable boost_5v
        // LOG_INF("Enabling boost_5v for %d ms", DELAY_MS);
        // gpio_pin_set_dt(&boost_5v, 1);
        // k_msleep(DELAY_MS);
        // LOG_INF("Disabling boost_5v for %d ms", DELAY_MS);
        // gpio_pin_set_dt(&boost_5v, 0);
        // k_msleep(DELAY_MS);

        // // Enable and disable boost_3v3
        // LOG_INF("Enabling boost_3v3 for %d ms", DELAY_MS);
        // gpio_pin_set_dt(&boost_3v3, 1);
        // k_msleep(DELAY_MS);
        // LOG_INF("Disabling boost_3v3 for %d ms", DELAY_MS);
        // gpio_pin_set_dt(&boost_3v3, 0);
        // k_msleep(DELAY_MS);

        // // Enable and disable load_enable
        // LOG_INF("Enabling load_enable for %d ms", DELAY_MS);
        // gpio_pin_set_dt(&load_enable, 1);
        // k_msleep(DELAY_MS);
        // LOG_INF("Disabling load_enable for %d ms", DELAY_MS);
        // gpio_pin_set_dt(&load_enable, 0);
        // k_msleep(DELAY_MS);

        // Enable and disable battery_adc_enable
        // LOG_INF("Enabling battery_adc_enable for %d ms", DELAY_MS);
        // gpio_pin_set_dt(&battery_adc_enable, 1);
        // k_msleep(DELAY_MS);
        // LOG_INF("Disabling battery_adc_enable for %d ms", DELAY_MS);
        // gpio_pin_set_dt(&battery_adc_enable, 0);
        // k_msleep(DELAY_MS);
    }
    return 0;
}
