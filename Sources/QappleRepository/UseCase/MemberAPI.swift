//
//  MemberAPI.swift
//  QappleRepository
//
//  Created by 김민준 on 2/9/25.
//

import Foundation

/// 멤버 API
public enum MemberAPI: Sendable {
    
    /// 테스트용 로컬 로그인 API 입니다.
    public static func localSignIn(server: Server) async throws -> LocalSignIn {
        let url = try QappleAPI.Member.localSignIn.url(from: server)
        return try await NetworkService.signIn(url: url)
    }
    
    /// 회원가입 API 입니다.
    public static func signUp(
        request: SignUpRequest,
        server: Server
    ) async throws -> SignUp {
        let url = try QappleAPI.Member.signUp.url(from: server)
        return try await NetworkService.post(url: url, body: request, accessToken: "")
    }
}
