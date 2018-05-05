# PEDI

* the device instance is static configured, initialised at startup time
* keep static, keep device configured by arch
* if the function will not block and need no parameter, it's return type could be void

## Common

	struct device * device_find ( char *name );
	int device_configure ( struct device *dev, void *param ); // not suggested
	int device_power_control ( struct device *dev, enum power_status);
	int device_signal ( uint32_t event );

## SPI

	int spi_transfer ( struct device *dev, char *txbuf, char *rxbuf, int length );

## I2C

	int i2c_transfer ( struct device *dev, struct i2c_msg *msg );

## UART

	int uart_send ( struct device *dev, char *buffer, int length );
	int uart_receive ( struct device *dev, char *buffer, int length );

## Timer

	int timer_set_interval ( struct device *dev, int us );

## Reference

* CMSIS Driver
* Zephyr Driver API
