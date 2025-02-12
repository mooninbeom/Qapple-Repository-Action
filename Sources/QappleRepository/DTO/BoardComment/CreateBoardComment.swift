//
//  CreateBoardComment.swift
//  QappleRepository
//
//  Created by Simmons on 2/12/25.
//

import Foundation

public struct CreateBoardComment: Decodable, Sendable {
    public let boardCommentId: Int
}

public struct CreateBoardCommentRequest: Encodable, Sendable {
    public let comment: String
}
