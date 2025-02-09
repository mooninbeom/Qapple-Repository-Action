//
//  RepositoryError.swift
//  Qapple-Repository
//
//  Created by 김민준 on 2/9/25.
//

import Foundation

/// Repository 에러 열거형
enum RepositoryError: Error {
    case invalidBaseUrl(String)
}
