//
//  Server.swift
//  Qapple-Repository
//
//  Created by 김민준 on 2/9/25.
//

import Foundation

/// Repository를 호출할 Server
public enum Server: String, Sendable {
    
    /// 운영 서버
    case production
    
    /// 테스트 서버
    case test
}
