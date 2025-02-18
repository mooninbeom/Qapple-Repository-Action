//
//  Question.swift
//  QappleRepository
//
//  Created by 문인범 on 2/14/25.
//

import Foundation


public struct Question: Decodable, Sendable {
    public let total: Int
    public let size: Int
    public let content: [Content]
    public let numberOfElements: Int
    public let threshold: String
    public let hasNext: Bool
    
    public struct Content: Decodable, Sendable {
        public let questionId: Int
        public let questionStatus: String
        public let livedAt: String?
        public let content: String
        public let isAnswered: Bool
    }
}
