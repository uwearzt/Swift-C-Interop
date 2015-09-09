// ------------------------------------------------------------------------------
// Copyright by Uwe Arzt mailto:mail@uwe-arzt.de, https://uwe-arzt.de
// under BSD License, see https://uwe-arzt.de/bsd-license
// ------------------------------------------------------------------------------

#include "cfunctions.h"

uint8_t ret_uint8(uint8_t i) { return i; }
int8_t ret_int8(int8_t i) { return i; }
uint64_t ret_uint64(uint64_t i) { return i; }
int64_t ret_int64(int64_t i) { return i; }

float ret_float(float f) { return f; }
double ret_double(double f) { return f; }

char* ret_buf(const char* buf, size_t len) {
    return (char*)buf;
}

test_enum_t ret_enum(test_enum_t en) {
    return en;
}

int call(callback_ptr cb, int i) {
    return cb(i);
}
