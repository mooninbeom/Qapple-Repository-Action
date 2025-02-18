//
//  UpdateProfile.swift
//  QappleRepository
//
//  Created by Simmons on 2/12/25.
//

import Foundation

public struct UpdateProfile: Decodable, Sendable {
    public let nickname: String
    public let profileImage: String?
    public let memberId: Int
}

public struct UpdateProfileRequest: Encodable, Sendable {
    public let nickname: String
    public let profileImage: String?
}
