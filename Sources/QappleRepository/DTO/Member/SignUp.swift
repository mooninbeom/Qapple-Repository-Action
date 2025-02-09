//
//  SignUp.swift
//  QappleRepository
//
//  Created by 김민준 on 2/9/25.
//

import Foundation

public struct SignUp: Decodable {
    public let accessToken: String?
    public let refreshToken: String?
}

public struct SignUpRequest: Encodable {
    public let signUpToken: String
    public let email: String
    public let nickname: String
    public let deviceToken: String
    
    public init(
        signUpToken: String,
        email: String,
        nickname: String,
        deviceToken: String
    ) {
        self.signUpToken = signUpToken
        self.email = email
        self.nickname = nickname
        self.deviceToken = deviceToken
    }
}
