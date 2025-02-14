//
//  CreateBoard.swift
//  QappleRepository
//
//  Created by 김민준 on 2/12/25.
//

import Foundation

public struct CreateBoard: Decodable, Sendable {
    public let boardId: Int
}

public struct CreateBoardRequest: Encodable, Sendable {
    public let content: String
    public let boardType: String
    
    public enum BoardType: String {
        case freeBoard = "FREEBOARD"
    }
}
