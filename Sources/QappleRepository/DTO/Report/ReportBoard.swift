//
//  ReportBoard.swift
//  QappleRepository
//
//  Created by 김민준 on 2/12/25.
//

import Foundation

public struct ReportBoard: Decodable, Sendable {
    public let boardReportId: Int
}

public struct ReportBoardRequest: Encodable, Sendable {
    public let boardId: Int
    public let boardReportType: String
}
