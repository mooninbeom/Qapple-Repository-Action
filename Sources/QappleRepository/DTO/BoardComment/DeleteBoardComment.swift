//
//  DeleteBoardComment.swift
//  QappleRepository
//
//  Created by Simmons on 2/12/25.
//

import Foundation

public struct DeleteBoardComment: Decodable, Sendable {
    public let boardCommentId: Int
}

public struct DeleteBoardCommentRequest: Encodable, Sendable {
    public let boardCommentId: Int
}
