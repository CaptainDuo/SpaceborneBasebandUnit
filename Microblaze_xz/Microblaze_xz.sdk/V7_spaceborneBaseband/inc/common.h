#include "xil_types.h"
#include "xgpio.h"
#include "sleep.h"

#define BIT(x)	(1 << (x))
/*
 * Create a contiguous bitmask starting at bit position @l and ending at
 * position @h. For example
 * GENMASK_ULL(39, 21) gives us the 64bit vector 0x000000ffffe00000.
 */

#define BITS_PER_LONG 32

#define GENMASK(h, l) \
	(((~0UL) - (1UL << (l)) + 1) & (~0UL >> (BITS_PER_LONG - 1 - (h))))

