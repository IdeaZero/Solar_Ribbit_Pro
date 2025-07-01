#include <zephyr/kernel.h>

#include <nrfx_saadc.h>
#include <zephyr/logging/log.h>
#define LOG_MODULE_NAME main
LOG_MODULE_REGISTER(LOG_MODULE_NAME, CONFIG_LOG_DEFAULT_LEVEL);



#define BATTERY_SAMPLE_INTERVAL_S 2

// Number of ADC channels
#define NUM_ADC_CHANNELS 1



static nrfx_saadc_channel_t channels[NUM_ADC_CHANNELS] = {
	//     NRFX_SAADC_DEFAULT_CHANNEL_SE(NRF_SAADC_INPUT_AIN0, 0), // Channel 0
	NRFX_SAADC_DEFAULT_CHANNEL_SE(NRF_SAADC_INPUT_AIN7, 7), // Channel 1 (adjust AIN1 as needed)
};


static int16_t samples[NUM_ADC_CHANNELS];

static void battery_sample_timer_handler(struct k_timer *timer);
K_TIMER_DEFINE(battery_sample_timer, battery_sample_timer_handler, NULL);


void battery_sample_timer_handler(struct k_timer *timer)
{
    	/* STEP 7.2 - Trigger the sampling */
	nrfx_err_t err = nrfx_saadc_mode_trigger();
	if (err != NRFX_SUCCESS)
	{
		LOG_INF("nrfx_saadc_mode_trigger error: %08x", err);
		return;
	}

	/* STEP 7.3 - Calculate and print voltage */
	for (int i = 0; i < NUM_ADC_CHANNELS; i++)
	{
		LOG_INF("SAADC Channel %d sample: %d\n", i, samples[i]);

		// Add your logic to convert the raw ADC values to meaningful units
		// For example, to convert to millivolts:
		int millivolts = ((600 * 6 * samples[i]) / (1 << 12));
		LOG_INF("  Channel %d Voltage: %d mV\n", i, millivolts);
	}
}
void configure_saadc(void)
{
	/* STEP 5.1 - Connect ADC interrupt to nrfx interrupt handler */
	IRQ_CONNECT(DT_IRQN(DT_NODELABEL(adc)), DT_IRQ(DT_NODELABEL(adc), priority), nrfx_isr,
		    nrfx_saadc_irq_handler, 0);

	/* STEP 5.2 - Initialize the nrfx_SAADC driver */
	nrfx_err_t err = nrfx_saadc_init(DT_IRQ(DT_NODELABEL(adc), priority));
	if (err != NRFX_SUCCESS)
	{
		LOG_INF("SAADC init error: %08x\n", err);
		return;
	}

	/* STEP 5.3 - Configure the SAADC channel */
	for (int i = 0; i < NUM_ADC_CHANNELS; i++)
	{
		channels[i].channel_config.gain = NRF_SAADC_GAIN1_6; // Adjust gain as needed
		// channels[i].channel_config.reference = NRF_SAADC_REFERENCE_INTERNAL;  // Internal
		// reference
	}
	err = nrfx_saadc_channels_config(channels, NUM_ADC_CHANNELS);
	if (err != NRFX_SUCCESS)
	{
		LOG_INF("SAADC channel config error: %08x\n", err);
		return;
	}

	/* STEP 5.4 - Configure nrfx_SAADC driver in simple and blocking mode */
	err = nrfx_saadc_simple_mode_set(BIT(7), NRF_SAADC_RESOLUTION_12BIT,
					 NRF_SAADC_OVERSAMPLE_DISABLED, NULL);
	if (err != NRFX_SUCCESS)
	{
		LOG_INF("SAADC mode set error: %08x\n", err);
		return;
	}

	/* STEP 5.5 - Set buffer where sample will be stored */
	err = nrfx_saadc_buffer_set(samples, NUM_ADC_CHANNELS);
	if (err != NRFX_SUCCESS)
	{
		LOG_INF("nrfx_saadc_buffer_set error: %08x", err);
		return;
	}

	// /* STEP 6 - Start periodic timer for battery sampling */
	k_timer_start(&battery_sample_timer, K_NO_WAIT, K_SECONDS(BATTERY_SAMPLE_INTERVAL_S));
}
int main(void)
{
    int ret;


    LOG_INF("USB ADC Example\n");
    k_sleep(K_SECONDS(1));
    configure_saadc();

    while (1)
    {


        // Sleep for a while before the next iteration
        k_sleep(K_SECONDS(1));
    }
    return 0;
}
