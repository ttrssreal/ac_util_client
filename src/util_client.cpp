#include "util_client.h"
#include <stdio.h>

namespace util_client {
	void init() {
		printf("Util-Client: Starting Up...\n");
	}

	void c2sinfo(playerent* d) {}

	void attackphysics_recoil_spread(float* recoil, int* spread) {
		*recoil = 3.0f;
	}
}
