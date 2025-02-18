//
//  LikeBoardComment.swift
//  QappleRepository
//
//  Created by Simmons on 2/12/25.
//

import Foundation

public struct LikeBoardComment: Decodable, Sendable {
    public let boardCommentId: Int
    public let isLiked: Bool
}

public struct LikeBoardCommentRequest: Encodable, Sendable {
    public let commentId: Int
}
