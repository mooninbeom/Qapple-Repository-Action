//
//  AnswerAPI.swift
//  Qapple-Repository
//
//  Created by 김민준 on 2/9/25.
//

import Foundation

enum AnswerAPI {
    
    /// 작성한 답변 조회 API 입니다.
    ///
    /// 첫 번째 조회 시 threshold를 비워 보내고, 이후 조회 시 앞선 조회의 반환값으로 받은 threshold를 보내주세요.
    static func fetchListOfMine(
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
