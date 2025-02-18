//
//  File.swift
//  QappleRepository
//
//  Created by Simmons on 2/13/25.
//

import Foundation

public enum TokenAPI {
    
    /// 토큰 재발급 API입니다.
    public static func refresh(
        server: Server,
        accessToken: String
    ) async throws -> RefreshToken {
        let url = try QappleAPI.Token.refresh.url(
            from: server
        )
        
        return try await NetworkService.get(
            url: url,
            accessToken: accessToken
        )
    }
}
