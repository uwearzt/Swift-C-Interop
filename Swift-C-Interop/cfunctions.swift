// ------------------------------------------------------------------------------
// Copyright by Uwe Arzt mailto:mail@uwe-arzt.de, https://uwe-arzt.de
// under BSD License, see https://uwe-arzt.de/bsd-license
// ------------------------------------------------------------------------------

import Foundation

@asmname("ret_uint8") func ret_uint8(x: UInt8) -> UInt8
@asmname("ret_int8") func ret_int8(x: Int8) -> Int8
@asmname("ret_uint64") func ret_uint64(x: UInt64) -> UInt64
@asmname("ret_int64") func ret_int64(x: Int64) -> Int64

@asmname("ret_float") func ret_float(f: Float32) -> Float32
@asmname("ret_double") func ret_double(f: Double) -> Double

@asmname("ret_buf") func ret_buf(buf: UnsafePointer<CChar>, len: size_t) -> UnsafeMutablePointer<CChar>

enum test_enum_t : Int {
    case en_one = 1
    case en_two = 2
}

@asmname("ret_enum") func ret_enum(en: Int) -> Int

@asmname("call") func call(cb: @convention(c) (Int) -> Int, i: Int) -> Int

