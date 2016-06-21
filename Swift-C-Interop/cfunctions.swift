// ------------------------------------------------------------------------------
// Copyright by Uwe Arzt mailto:mail@uwe-arzt.de, https://uwe-arzt.de
// under BSD License, see https://uwe-arzt.de/bsd-license
// ------------------------------------------------------------------------------

import Foundation

@_silgen_name("ret_uint8") func ret_uint8(_ i: UInt8) -> UInt8
@_silgen_name("ret_int8") func ret_int8(_ i: Int8) -> Int8
@_silgen_name("ret_uint64") func ret_uint64(_ i: UInt64) -> UInt64
@_silgen_name("ret_int64") func ret_int64(_ i: Int64) -> Int64

@_silgen_name("ret_float") func ret_float(_ f: Float32) -> Float32
@_silgen_name("ret_double") func ret_double(_ f: Double) -> Double

@_silgen_name("ret_buf") func ret_buf(_ buf: UnsafePointer<CChar>, len: size_t) -> UnsafeMutablePointer<CChar>

enum test_enum_t : Int {
    case en_one = 1
    case en_two = 2
}

@_silgen_name("ret_enum") func ret_enum(_ en: Int) -> Int

@_silgen_name("call") func call(_ cb: @convention(c) (Int) -> Int, i: Int) -> Int

