//
//  SecretTests.swift
//  Qapple-Repository
//
//  Created by 김민준 on 2/9/25.
//

import Testing
import Foundation
@testable import Qapple_Repository

struct SecretTests {
    
    @Test
    func productionServerURL() throws {
        let url = BaseURL.fetch(from: .production)
        #expect(url != "HOST URL ERROR")
    }
    
    @Test
    func testServerURL() throws {
        let url = BaseURL.fetch(from: .test)
        #expect(url != "HOST URL ERROR")
    }
}
