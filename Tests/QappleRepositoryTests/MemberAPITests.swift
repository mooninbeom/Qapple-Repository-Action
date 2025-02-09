//
//  MemberAPITests.swift
//  QappleRepository
//
//  Created by 김민준 on 2/9/25.
//

import Testing
import Foundation
@testable import QappleRepository

struct MemberAPITests {
    
    @Test
    func localSignIn() async throws {
        let response = try await MemberAPI.localSignIn(server: .test)
        dump(response)
    }
    
    @Test
    func localSignUp() async throws {
        let signUpToken = try await MemberAPI.localSignIn(server: .test).refreshToken
        let response = try await MemberAPI.signUp(
            request: .init(
                signUpToken: signUpToken,
                email: "email",
                nickname: "nickname",
                deviceToken: "deviceToken"
            ),
            server: .test
        )
        dump(response)
    }
}
