#include <stdio.h>
#include <stdlib.h>
#include <papi.h>

#define NUM_EVENTS 3
#define L1_CACHE_MISS_INDEX 0
#define L2_CACHE_MISS_INDEX 1
#define L3_CACHE_MISS_INDEX 2

int main(int argc, char ** argv) {
    int events[NUM_EVENTS] = {PAPI_L1_TCM, PAPI_L2_TCM, PAPI_L3_TCM};
    int EventSet1 = PAPI_NULL;
    long long values[NUM_EVENTS];
    char *error_str;
    int ret;

    // Initialize PAPI
    ret = PAPI_library_init(PAPI_VER_CURRENT);
    if (ret != PAPI_VER_CURRENT) {

        fprintf(stderr, "PAPI library initialization error!\n");
        exit(1);
    }
    if( argc < 2){
        fprintf(stderr, "Program to be run is missing. Enter it as an argument.\n");
        exit(1);
    }
    if(PAPI_create_eventset(&EventSet1)!=PAPI_OK){
        error_str = PAPI_strerror(ret);
        fprintf(stderr, "Could not create event set: %s\n", error_str );
    }

    for (int i = 0; i< NUM_EVENTS; i++){
        ret = PAPI_add_event(EventSet1, events[i]);
        if(ret != PAPI_OK) {
            error_str = PAPI_strerror(ret);
            fprintf(stderr, "Event index %d could not be added. Cause: %s\n", i, error_str);

        }
    }

    // Start counters
    ret = PAPI_start(EventSet1);
    if (ret != PAPI_OK) {
        fprintf(stderr, "PAPI start error!\n");
        exit(1);
    }

    for (int i = 0; i < 100; i++)
    {
        for (int j = 0; j < 100; j++)
        {
            for (int k = 0; k < 100; k++)
            {
                /* Do some work */
            }
        }
    }
    system(argv[1]);
    // Stop counters
    ret = PAPI_stop(EventSet1, values);
    if (ret != PAPI_OK) {
        fprintf(stderr, "PAPI stop error!\n");
        exit(1);
    }

    // Print results
    printf("L1 cache miss rate: %f\n", (double) values[L1_CACHE_MISS_INDEX]/(double) (values[L1_CACHE_MISS_INDEX] * PAPI_L1_TCH));
    printf("L2 cache miss rate: %f\n", (double) values[L2_CACHE_MISS_INDEX]/(double) (values[L1_CACHE_MISS_INDEX] * PAPI_L1_TCH));
    printf("L3 cache miss rate: %f\n", (double) values[L3_CACHE_MISS_INDEX]/(double) (values[L1_CACHE_MISS_INDEX] * PAPI_L1_TCH));

    // Cleanup PAPI
    PAPI_cleanup_eventset(EventSet1);
    PAPI_destroy_eventset(&EventSet1);
    PAPI_shutdown();

    return 0;
}
