#include <ctype.h>
#include <errno.h>
#include <netdb.h>
#include <signal.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <unistd.h>
#include "intrin.h"

int32_t g20;

int64_t explode_bomb(void) {
    // 0x1bd6
    puts("\nBOOM!!!");
    puts("The bomb has blown up.");
    puts("Your instructor has been notified.");
    exit(8);
    return &g20;
}

int64_t read_six_numbers(int64_t str, int64_t * a2) {
    int64_t v1 = (int64_t)a2;
    int32_t items_assigned = sscanf((char *)str, "%d %d %d %d %d %d", a2, (int64_t *)(v1 + 4), (int64_t *)(v1 + 8), (int64_t *)(v1 + 12), (int64_t *)(v1 + 16), (int64_t *)(v1 + 20)); // 0x1c3b
    if (items_assigned < 6) {
        // 0x1c4e
        return explode_bomb();
    }
    // 0x1c49
    return items_assigned;
}

int64_t phase_2(void) {
    int64_t v1 = __readfsqword(40); // 0x145a
    int32_t v2; // bp-56, 0x1454
    int64_t v3; // 0x1454
    read_six_numbers(v3, (int64_t *)&v2);
    int32_t v4; // 0x1454
    if (v4 == 1 != (v2 == 0)) {
        // 0x147f
        explode_bomb();
        // UNREACHABLE
    }
    int64_t v5 = &v2;
    int32_t v6 = 0; // 0x1499
    int64_t v7 = v5 + 4; // 0x1496
    int32_t v8 = *(int32_t *)v7; // 0x1496
    while (*(int32_t *)(v5 + 8) == v8 + v6) {
        // 0x148d
        int64_t v9; // bp-40, 0x1454
        if (v7 == (int64_t)&v9) {
            int64_t result = __readfsqword(40) ^ v1; // 0x14ac
            if (result == 0) {
                // 0x14b7
                return result;
            }
            // 0x14be
            __stack_chk_fail();
            return &g20;
        }
        v5 = v7;
        v6 = v8;
        v7 = v5 + 4;
        v8 = *(int32_t *)v7;
    }
    // 0x14a0
    explode_bomb();
    // UNREACHABLE
}

int main() {
      phase_2();
}