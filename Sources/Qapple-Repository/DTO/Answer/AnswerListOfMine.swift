//
//  AnswerListOfMine.swift
//  Qapple-Repository
//
//  Created by 김민준 on 2/9/25.
//

import Foundation

public struct AnswerListOfMine: Decodable {
    let total: Int?
    let size: Int
    let content: [Content]
    let numberOfElements: Int
    let threshold: String
    let hasNext: Bool
    
    struct Content: Codable, Hashable {
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
