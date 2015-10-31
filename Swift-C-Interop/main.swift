// ------------------------------------------------------------------------------
// Copyright by Uwe Arzt mailto:mail@uwe-arzt.de, https://uwe-arzt.de
// under BSD License, see https://uwe-arzt.de/bsd-license
// ------------------------------------------------------------------------------
// Just some sample calls, the real demo is in the Unit Test cases
// ------------------------------------------------------------------------------
import Foundation

print("Swift-C-Interop")

print(ret_uint8(13))
print(ret_int8(27))
print(ret_uint64(1124))
print(ret_int64(-1124))

// This crashes the compiler: 
//   Version 7.0 beta 6 (7A192o)
//   Version 7.0 (7A220)
//   Version 7.1 beta (7B60)
//   Version 7.1 beta (7B75)
//   Version 7.1 beta 3 (7B85)
//   Version 7.1 (7B91b)
//let myCallback : @convention(c) (i: Int) -> Int = {
// works
let myCallback : @convention(c) (Int) -> Int = {
    (i) -> Int in
    return i * 2
}

let x = call(myCallback, i: 5)
print (x)