//
//  MainQuestion.swift
//  QappleRepository
//
//  Created by 문인범 on 2/14/25.
//

import Foundation


public struct MainQuestion: Decodable, Sendable {
    public let questionId: Int
    public let questionStatus: String
    public let content: String
    public let isAnswered: Bool
}
