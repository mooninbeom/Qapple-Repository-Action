//
//  PaginationInfo.swift
//  Qapple-Repository
//
//  Created by 김민준 on 2/9/25.
//

import Foundation

/// 페이지네이션 정보 구조체
public struct PaginationInfo: Equatable, Sendable {
    public var threshold: String
    public var hasNext: Bool
}
