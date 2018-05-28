# DEBUG

	#ifndef DEBUG_H
	#define DEBUG_H

	#ifndef DEBUG_MASK
	#define DEBUG_MASK			(0)
	#endif

	#define CHANNEL_FLOW			(1<<0)
	#define CHANNEL_DATA_FLOW		(1<<1)

	#define log(suffix, fmt, ...)		\
		log_##suffix(fmt, ##__VA_ARGS__)

	#if (DEBUG_MASK & CHANNEL_FLOW)
	#define log_CHANNEL_FLOW(fmt, ...) printf("<FLOW> " fmt, ##__VA_ARGS__)
	#else
	#define log_CHANNEL_FLOW(fmt, ...) do {} while (0)
	#endif

	#if (DEBUG_MASK & CHANNEL_DATA_FLOW)
	#define log_CHANNEL_DATA_FLOW(fmt, ...) printf("<DATA FLOW> " fmt, ##__VA_ARGS__)
	#else
	#define log_CHANNEL_DATA_FLOW(fmt, ...) do {} while (0)
	#endif

	#define TRACE	log(CHANNEL_FLOW, "%s, %s, %d\n", __FILE__, __FUNCTION__, __LINE__)

	#endif

