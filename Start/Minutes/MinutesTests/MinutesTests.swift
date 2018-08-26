//
//  MinutesTests.swift
//  MinutesTests
//
//  Created by mbudhiraja on 8/26/18.
//  Copyright © 2018 Microsoft. All rights reserved.
//

import XCTest

@testable import Minutes

class MinutesTests: XCTestCase {
    
    var entryUnderTest: Entry!
    
    override func setUp() {
        super.setUp()
        entryUnderTest  = Entry("Title" , "Content")
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        entryUnderTest = nil
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSerialization(){
        let serialzedData  = FileEntryStore.serialize(entryUnderTest)
        let entry = FileEntryStore.deserialize(serialzedData!)
        XCTAssertEqual(entry?.title,"Title" , "Title doesn't match")
        XCTAssertEqual(entry?.content,"Content" , "Content doesn't match")
    }
}
