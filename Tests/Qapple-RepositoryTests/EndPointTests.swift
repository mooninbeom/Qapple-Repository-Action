//
//  EndPointTests.swift
//  Qapple-Repository
//
//  Created by 김민준 on 2/9/25.
//

import Testing
import Foundation
@testable import Qapple_Repository

struct EndPointTests {
    
    @Test
    func example() throws {
        let url = try QappleAPI.Answer.post(questionId: 0).url()
        print(url)
    }
}
