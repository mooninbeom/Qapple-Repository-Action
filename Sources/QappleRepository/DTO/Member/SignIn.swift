//
//  SignIn.swift
//  QappleRepository
//
//  Created by Simmons on 2/12/25.
//

import Foundation

public struct SignIn: Decodable, Sendable {
    public let accessToken: String?
    public let refreshToken: String?
    public let isMember: Bool
}
