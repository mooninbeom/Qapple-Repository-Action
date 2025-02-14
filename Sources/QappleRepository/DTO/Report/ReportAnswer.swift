//
//  ReportAnswer.swift
//  QappleRepository
//
//  Created by 김민준 on 2/12/25.
//

import Foundation

public struct ReportAnswer: Decodable, Sendable {
    public let reportId: Int
}

public struct ReportAnswerRequest: Encodable, Sendable {
    public let answerId: Int
    public let reportType: String
}
