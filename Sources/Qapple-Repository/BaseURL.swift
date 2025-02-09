//
//  BaseURL.swift
//  Qapple-Repository
//
//  Created by 김민준 on 2/9/25.
//

import Foundation

/// API 호출을 위한 기본 URL 생성 관리
enum BaseURL {
    
    private static let scheme: String = "http"
    
    enum Server: String {
        
        /// 운영 서버
        case production = "PRODUCTION_URL"
        
        /// 테스트 서버
        case test = "TEST_URL"
    }
    
    /// 기본 URL을 받아옵니다.
    static func fetch(from server: Server) -> String {
        guard let host = ProcessInfo.processInfo.environment[server.rawValue] else {
            return "HOST URL ERROR"
        }
        guard let port = ProcessInfo.processInfo.environment["PORT_NUM"] else {
            return "PORT NUM ERROR"
        }
        return "\(scheme)://\(host):\(port)"
    }
}
