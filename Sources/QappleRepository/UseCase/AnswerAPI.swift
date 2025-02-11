//
//  AnswerAPI.swift
//  Qapple-Repository
//
//  Created by 김민준 on 2/9/25.
//

import Foundation

/// 답변 API
public enum AnswerAPI: Sendable {
    
    /// 작성한 답변 조회 API 입니다.
    public static func fetchListOfMine(
        threshold: Int?,
        pageSize: Int32,
        server: Server,
        accessToken: String
    ) async throws -> AnswerListOfMine {
        let url = try QappleAPI.Answer.listOfMine(
            threshold: threshold,
            pageSize: pageSize
        ).url(from: server)
        return try await NetworkService.get(url: url, accessToken: accessToken)
    }
}
