// ------------------------------------------------------------------------------
// Copyright by Uwe Arzt mailto:mail@uwe-arzt.de, https://uwe-arzt.de
// under BSD License, see https://uwe-arzt.de/bsd-license
// ------------------------------------------------------------------------------

#ifndef cfunctions_h
#define cfunctions_h

#include <stdio.h>

// int types
uint8_t ret_uint8(uint8_t i);
int8_t ret_int8(int8_t i);
uint64_t ret_uint64(uint64_t i);
int64_t ret_int64(int64_t i);

// float types
float ret_float(float f);
double ret_double(double f);

// pointer
char* ret_buf(const char* buf, size_t len);

// enum
typedef enum test_enum_t {
    en_one = 1,
    en_two = 2
} test_enum_t;

test_enum_t ret_enum(test_enum_t en);

// call will callback
typedef int(*callback_ptr)(int);
int call(callback_ptr cb, int i);

#endif
