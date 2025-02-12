//
//  Profile.swift
//  QappleRepository
//
//  Created by Simmons on 2/12/25.
//

import Foundation

public struct Profile: Decodable, Sendable {
    public let nickname: String
    public let profileImage: String?
    public let joinDate: String
}
