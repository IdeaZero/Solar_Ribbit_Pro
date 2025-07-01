#include <zephyr/kernel.h>
#include <zephyr/device.h>
#include <zephyr/drivers/i2c.h>
#include <zephyr/logging/log.h>
#include <zephyr/drivers/gpio.h>

#include <zephyr/devicetree.h>
#include <zephyr/drivers/i2c.h>
#define LOG_MODULE_NAME main
LOG_MODULE_REGISTER(LOG_MODULE_NAME, CONFIG_LOG_DEFAULT_LEVEL);

#define LED1_NODE DT_ALIAS(led1)
#define LED2_NODE DT_ALIAS(led2)
static const struct gpio_dt_spec boost_3v3 = GPIO_DT_SPEC_GET(LED1_NODE, gpios);
static const struct gpio_dt_spec load_enable = GPIO_DT_SPEC_GET(LED2_NODE, gpios);
int main(void)
{
    int ret;

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

    gpio_pin_set_dt(&boost_3v3, 1);
    gpio_pin_set_dt(&load_enable, 1);
    uint8_t cnt = 0;
    uint8_t first = 0x04, last = 0x77;
    const struct device *i2c_dev = DEVICE_DT_GET(DT_NODELABEL(i2c2));
    if (!device_is_ready(i2c_dev))
    {
        LOG_ERR("I2C bus  not ready");
        return 1;
    }

    LOG_INF("I2C scan");

    printk("     0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f\n");
    for (uint8_t i = 0; i <= last; i += 16)
    {
        printk("%02x: ", i);
        for (uint8_t j = 0; j < 16; j++)
        {
            if (i + j < first || i + j > last)
            {
                printk("   ");
                continue;
            }

            struct i2c_msg msgs[1];
            uint8_t dummy;

            msgs[0].buf = &dummy;
            msgs[0].len = 0U;
            msgs[0].flags = I2C_MSG_WRITE | I2C_MSG_STOP;

            if (i2c_transfer(i2c_dev, msgs, 1, i + j) == 0)
            {
                printk("%02x ", i + j);
                cnt++;
            }
            else
            {
                printk("-- ");
            }
        }
        printk("\n");
    }

    return 0;
}