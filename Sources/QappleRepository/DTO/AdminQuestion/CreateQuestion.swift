//
//  CreateQuestion.swift
//  QappleRepository
//
//  Created by 문인범 on 2/14/25.
//

import Foundation


public struct CreateQuestion: Decodable, Sendable {
    public let questionId: Int
}


public struct CreateQuestionRequest: Encodable, Sendable {
    public let questionStatus: String
    public let content: String
    
    public enum QuestionStatus: String {
        case live = "LIVE"
        case old = "OLD"
        case hold = "HOLD"
        case pending = "PENDING"
    }
}
