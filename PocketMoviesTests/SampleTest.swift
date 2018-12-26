//
//  SampleTest.swift
//  PocketMoviesTests
//
//  Created by Gabriel Rosa on 26/12/18.
//  Copyright © 2018 Gabe. All rights reserved.
//

import XCTest
@testable import PocketMovies

struct SampleStructForTest {
    let isTrue: Bool
    let title: String
    let count: Int
}

class SampleStructTests: XCTestCase {
    
    let sample = SampleStructForTest(isTrue: false, title: "myTitle", count: 132)
        
    func checkIsTrue() {
        XCTAssertFalse(sample.isTrue)
    }
    
    func checkTitle() {
        XCTAssertEqual(sample.title, "myTitle")
    }
    
    func checkCount() {
        XCTAssertEqual(sample.count, 123)
    }
}




