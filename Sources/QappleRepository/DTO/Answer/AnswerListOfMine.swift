//
//  AnswerListOfMine.swift
//  Qapple-Repository
//
//  Created by 김민준 on 2/9/25.
//

import Foundation

public struct AnswerListOfMine: Decodable {
    public let total: Int?
    public let size: Int
    public let content: [Content]
    public let numberOfElements: Int
    public let threshold: String
    public let hasNext: Bool
    
    public struct Content: Codable, Hashable {
        let questionId: Int
        let answerId: Int
        let writerId: Int
        let nickname: String
        let profileImage: String?
        let content: String
        let heartCount: Int
        let writeAt: String
        let isLiked: Bool
    }
}
