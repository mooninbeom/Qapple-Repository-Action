//
//  SecretsTest.swift
//  Qapple-Repository
//
//  Created by 김민준 on 2/9/25.
//

import Testing
import Foundation
@testable import Qapple_Repository

struct SecretsTest {
    
    @Test
    func productionServerURL() throws {
        let url = try BaseURL.fetch(from: .production)
        print(url)
    }
    
    @Test
    func testServerURL() throws {
        let url = try BaseURL.fetch(from: .test)
        print(url)
    }
}
