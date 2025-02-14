//
//  CreateAnswer.swift
//  QappleRepository
//
//  Created by 김민준 on 2/12/25.
//

import Foundation

public struct CreateAnswer: Decodable, Sendable {
    public let answerId: Int
}

public struct CreateAnswerRequest: Encodable, Sendable {
    public let answer: String
}
