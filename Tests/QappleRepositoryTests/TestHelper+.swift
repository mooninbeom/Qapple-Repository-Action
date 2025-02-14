//
//  TestHelper.swift
//  QappleRepository
//
//  Created by 김민준 on 2/12/25.
//

import Foundation
import QappleRepository

@MainActor
final class TestHelper {

    static let shared = TestHelper()
    private init() {}

    /// 액세스 토큰
    private var accessToken = ""

    /// 테스트 토큰을 발급합니다.
    func testToken() async throws -> String {
        if accessToken.isEmpty {
            let localSignIn = try await MemberAPI.localSignIn(
                testId: "TEST_ID_\(Date.now.description)",
                deviceToken: "TEST_DEVICE_TOKEN",
                server: .test
            )
            let localSignUp = try await MemberAPI.signUp(
                request: .init(
                    signUpToken: localSignIn.refreshToken,
                    email: "email",
                    nickname: "nickname",
                    deviceToken: "deviceToken"
                ),
                server: .test
            )
            return localSignUp.accessToken ?? ""
        } else {
            return accessToken
        }
    }
}
