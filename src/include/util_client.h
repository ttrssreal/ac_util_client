#define UTIL_CLIENT_VERSION "0.1"

#include "cube.h"

namespace util_client {
	void init();
	void c2sinfo(playerent* d);
	void attackphysics_recoil_spread(float* recoil, int* spread);
}
