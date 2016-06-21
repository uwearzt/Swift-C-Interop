// ------------------------------------------------------------------------------
// Copyright by Uwe Arzt mailto:mail@uwe-arzt.de, https://uwe-arzt.de
// under BSD License, see https://uwe-arzt.de/bsd-license
// ------------------------------------------------------------------------------
import XCTest

class Swift_C_InteropTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testSimpleDatatypes() {
        XCTAssertEqual(ret_uint8(UInt8.max), UInt8.max)
        XCTAssertEqual(ret_int8(Int8.max), Int8.max)
        XCTAssertEqual(ret_uint64(UInt64.max), UInt64.max)
        XCTAssertEqual(ret_int64(Int64.max), Int64.max)
        
        XCTAssertEqual(ret_float(1.0), 1.0)
        XCTAssertEqual(ret_double(Double.infinity), Double.infinity)
    }
    
    func testPointerTypes() {
        let str = "old"
        XCTAssertEqual(String(validatingUTF8: ret_buf(str, len: str.utf8.count)), str)
    }
    
    func testEnumTypes() {
        XCTAssertEqual(ret_enum(test_enum_t.en_one.rawValue), test_enum_t.en_one.rawValue)
    }
    
    func testCallback() {
        let myCallback : @convention(c) (Int) -> Int = {
            (i) -> Int in
            return i * 2
        }
        XCTAssertEqual(call(myCallback, i: 4711), 9422)
    }
}
