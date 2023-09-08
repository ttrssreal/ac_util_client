#include "util_client.h"
#include <stdio.h>

namespace util_client {
	void init() {
		printf("Util-Client: Starting Up...\n");
	}

	void c2sinfo(playerent* d) {
		printf("(%.2f, %.2f, %.2f)\n", d->o.x, d->o.y, d->o.z);
	}
}
