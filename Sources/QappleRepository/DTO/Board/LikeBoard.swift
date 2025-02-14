//
//  LikeBoard.swift
//  QappleRepository
//
//  Created by 김민준 on 2/12/25.
//

import Foundation

public struct LikeBoard: Decodable, Sendable {
    public let boardId: Int
    public let isLiked: Bool
}

public struct LikeBoardRequest: Encodable, Sendable {
    public let boardId: Int
}
