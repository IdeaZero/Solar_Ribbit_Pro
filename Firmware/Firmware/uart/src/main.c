#include <zephyr/kernel.h>
#include <zephyr/drivers/uart.h>

#include <zephyr/logging/log.h>
#define LOG_MODULE_NAME main
LOG_MODULE_REGISTER(LOG_MODULE_NAME, CONFIG_LOG_DEFAULT_LEVEL);

static const struct device *uart = DEVICE_DT_GET(DT_NODELABEL(uart0));
/* UART payload buffer element size. */
#define UART_BUF_SIZE 20
struct uart_data_t
{
	void *fifo_reserved;
	uint8_t data[UART_BUF_SIZE];
	uint16_t len;
};
static K_FIFO_DEFINE(fifo_uart_tx_data);

int uart_init(void)
{
	int err;

	if (!device_is_ready(uart))
	{
		LOG_ERR("UART device not ready");
		return -ENODEV;
	}
	return err;
}

static int uart_send_data(const uint8_t *data, uint16_t len)
{
	int err;

	for (uint16_t pos = 0; pos != len;)
	{
		struct uart_data_t *tx = k_malloc(sizeof(*tx));

		if (!tx)
		{
			LOG_WRN("Not able to allocate UART send data buffer");
		}

		/* Keep the last byte of TX buffer for potential LF char. */
		size_t tx_data_size = sizeof(tx->data) - 1;

		if ((len - pos) > tx_data_size)
		{
			tx->len = tx_data_size;
		}
		else
		{
			tx->len = (len - pos);
		}

		memcpy(tx->data, &data[pos], tx->len);

		pos += tx->len;

		/* Append the LF character when the CR character triggered
		 * transmission from the peer.
		 */
		if ((pos == len) && (data[len - 1] == '\r'))
		{
			tx->data[tx->len] = '\n';
			tx->len++;
		}

		err = uart_tx(uart, tx->data, tx->len, SYS_FOREVER_MS);
		if (err)
		{
			k_fifo_put(&fifo_uart_tx_data, tx);
		}
		else
		{
			k_free(tx);
		}
	}

	return err;
}

int main(void)
{
    int err;


    LOG_INF("UART Example\n");
	err = uart_init();
	if (err != 0)
	{
		LOG_ERR("uart_init failed (err %d)", err);
		// return 0;
	} 
	const char msg[] = "hello world";

    while (1)
    {
        uart_send_data((const uint8_t *)msg, sizeof(msg) - 1);

        // Sleep for 2 seconds before the next iteration
        k_sleep(K_SECONDS(2));
    }
    return 0;
}
