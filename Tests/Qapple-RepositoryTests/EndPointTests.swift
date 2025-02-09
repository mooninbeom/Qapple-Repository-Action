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
    func example() async throws {
        let response = try await AnswerRepository.fetchAnswerListOfMine(
            threshold: 0,
            pageSize: 25,
            server: .test,
            accessToken: ""
        )
        dump(response)
    }
}
