//
//  ReportBoardComment.swift
//  QappleRepository
//
//  Created by 김민준 on 2/12/25.
//

import Foundation

public struct ReportBoardComment: Decodable, Sendable {
    public let boardCommentReportId: Int
}

public struct ReportBoardCommentRequest: Encodable, Sendable {
    public let boardCommentId: Int
    public let boardCommentReportType: String
}
