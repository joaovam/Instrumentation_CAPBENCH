#include <stdio.h>
#include <stdlib.h>
#include <papi.h>

#define NUM_EVENTS 3
#define L1_CACHE_MISS_INDEX 0
#define L2_CACHE_MISS_INDEX 1
#define L3_CACHE_MISS_INDEX 2

int main() {
    int events[NUM_EVENTS] = {PAPI_L1_DCM, PAPI_L2_DCM, PAPI_L3_TCM};
    int EventSet1 = PAPI_NULL;
    long long values[NUM_EVENTS];
    int ret;

    // Initialize PAPI
    ret = PAPI_library_init(PAPI_VER_CURRENT);
    if (ret != PAPI_VER_CURRENT) {
        fprintf(stderr, "PAPI library initialization error!\n");
        exit(1);
    }
    for (int i = 0; i< NUM_EVENTS; i++){
        ret = PAPI_add_event(EventSet1, events[i]);
        if(ret != PAPI_OK) {
            fprintf(stderr, "Event index %d could not be added", i);
            exit(1);
        }
    }

    // Start counters
    ret = PAPI_start(EventSet1);
    if (ret != PAPI_OK) {
        fprintf(stderr, "PAPI start error!\n");
        exit(1);
    }

    // Code to measure cache misses
    // ...

    // Stop counters
    ret = PAPI_stop(EventSet1, values);
    if (ret != PAPI_OK) {
        fprintf(stderr, "PAPI stop error!\n");
        exit(1);
    }

    // Print results
    printf("L1 cache misses: %lld\n", values[L1_CACHE_MISS_INDEX]);
    printf("L2 cache misses: %lld\n", values[L2_CACHE_MISS_INDEX]);
    printf("L3 cache misses: %lld\n", values[L3_CACHE_MISS_INDEX]);

    // Cleanup PAPI
    PAPI_shutdown();

    return 0;
}
