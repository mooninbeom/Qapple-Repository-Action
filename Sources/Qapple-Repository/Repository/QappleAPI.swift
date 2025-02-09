//
//  QappleAPI.swift
//  Qapple-Repository
//
//  Created by 김민준 on 2/9/25.
//

import Foundation

enum QappleAPI {
    
    typealias TotalCount = Int
    
    // private static let baseURL = URL(string: BaseURL.fetch(from: .production))
    
    struct BaseResponse<ResultType: Decodable>: Decodable {
        let timeStamp: String
        let code: String
        let message: String
        let result: ResultType
    }
    
    // MARK: - Answer
    
    enum Answer: RawRepresentable, API {
        static let basePath = "answers"
        
        case listOfMine(threshold: Int?, pageSize: Int32 = 25)
        case delete(answerId: Int)
        case listOfQuestion(questionId: Int, threshold: String?, pageSize: Int32 = 25)
        case post(questionId: Int)
        
        var rawValue: RawValue {
            switch self {
            case let .listOfMine(threshold, pageSize):
                appending(urlQueryItems: [
                    .init(key: "threshold", value: threshold),
                    .init(key: "pageSize", value: pageSize),
                ])
                
            case let .delete(answerId):
                appending(baseString: "\(answerId)")
                
            case let .listOfQuestion(questionId, threshold, pageSize):
                appending(baseString: "question/\(questionId)", urlQueryItems: [
                    .init(key: "threshold", value: threshold),
                    .init(key: "pageSize", value: pageSize),
                ])
                
            case let .post(questionId):
                appending(baseString: "question/\(questionId)")
            }
        }
    }
    
//    // MARK: - Member
//    
//    enum Member: RawRepresentable, API {
//        static let baseUrl = QappleAPI.baseURL?
//            .appendingPathComponent("members")
//        
//        case certification(signUpToken: String, email: String)
//        case certificationCodeCheck(signUpToken: String, email: String, certCode: String)
//        case check(email: String)
//        case myPage
//        case myPageEdit
//        case nicknameCheck(nickname: String)
//        case resign
//        case signIn(code: String, deviceToken: String)
//        case signUp
//        
//        var rawValue: RawValue {
//            switch self {
//            case let .certification(signUpToken, email):
//                appending(baseString: "email/certification", urlQueryItems: [
//                    .init(key: "signUpToken", value: signUpToken),
//                    .init(key: "email", value: email),
//                ])
//                
//            case let .certificationCodeCheck(signUpToken, email, certCode):
//                appending(baseString: "email/certification/check", urlQueryItems: [
//                    .init(key: "signUpToken", value: signUpToken),
//                    .init(key: "email", value: email),
//                    .init(key: "certCode", value: certCode),
//                ])
//                
//            case let .check(email):
//                appending(baseString: "email/check", urlQueryItems: [
//                    .init(key: "email", value: email)
//                ])
//                
//            case .myPage:
//                appending(baseString: "mypage")
//                
//            case .myPageEdit:
//                appending(baseString: "mypage")
//                
//            case let .nicknameCheck(nickname):
//                appending(baseString: "nickname/check", urlQueryItems: [
//                    .init(key: "nickname", value: nickname),
//                ])
//                
//            case .resign:
//                appending(baseString: "resign")
//                
//            case let .signIn(code, deviceToken):
//                appending(baseString: "sign-in", urlQueryItems: [
//                    .init(key: "code", value: code),
//                    .init(key: "deviceToken", value: deviceToken),
//                ])
//                
//            case .signUp:
//                appending(baseString: "sign-up")
//            }
//        }
//        
//    }
//    
//    // MARK: - Board
//    
//    enum Board: RawRepresentable, API {
//        static let baseUrl = QappleAPI.baseURL?
//            .appendingPathComponent("boards")
//        
//        case list(threshold: Int?, pageSize: Int32 = 25)
//        case post
//        case single(boardId: Int)
//        case delete(boardId: Int)
//        case like(boardId: Int)
//        case search(keyword: String?, threshold: Int?, pageSize: Int32 = 25)
//        
//        var rawValue: RawValue {
//            switch self {
//            case let .list(threshold, pageSize):
//                appending(urlQueryItems: [
//                    .init(key: "threshold", value: threshold),
//                    .init(key: "pageSize", value: pageSize),
//                ])
//                
//            case .post:
//                appending()
//                
//            case let .single(boardId):
//                appending(baseString: "\(boardId)")
//                
//            case let .delete(boardId):
//                appending(baseString: "\(boardId)")
//                
//            case let .like(boardId):
//                appending(baseString: "\(boardId)/heart")
//                
//            case let .search(keyword, threshold, pageSize):
//                appending(baseString: "search", urlQueryItems: [
//                    .init(key: "keyword", value: keyword),
//                    .init(key: "threshold", value: threshold),
//                    .init(key: "pageSize", value: pageSize),
//                ])
//            }
//        }
//    }
//    
//    // MARK: - Question
//    
//    enum Question: RawRepresentable, API {
//        static let baseUrl = QappleAPI.baseURL?
//            .appendingPathComponent("questions")
//        
//        case listOfMain
//        case list(threshold: String?, pageSize: Int32 = 25)
//        
//        var rawValue: RawValue {
//            switch self {
//            case .listOfMain:
//                appending(baseString: "main")
//                
//            case let .list(threshold, pageSize):
//                appending(urlQueryItems: [
//                    .init(key: "threshold", value: threshold),
//                    .init(key: "pageSize", value: pageSize),
//                ])
//            }
//        }
//    }
//    
//    // MARK: - BoardComment
//    
//    enum BoardComment: RawRepresentable, API {
//        static let baseUrl = QappleAPI.baseURL?
//            .appendingPathComponent("board-comments")
//        
//        case list(boardId: Int, threshold: Int?, pageSize: Int32 = 25)
//        case delete(commentId: Int)
//        case post(boardId: Int)
//        case like(commentId: Int)
//        
//        var rawValue: RawValue {
//            switch self {
//            case let .list(boardId, threshold, pageSize):
//                appending(baseString: "\(boardId)", urlQueryItems: [
//                    .init(key: "threshold", value: threshold),
//                    .init(key: "pageSize", value: pageSize),
//                ])
//                
//            case let .delete(commentId):
//                appending(baseString: "\(commentId)")
//                
//            case let .post(boardId):
//                appending(baseString: "board/\(boardId)")
//                
//            case let .like(commentId):
//                appending(baseString: "heart/\(commentId)")
//            }
//        }
//    }
//    
//    // MARK: - Notification
//    
//    enum Notification: RawRepresentable, API {
//        static let baseUrl = QappleAPI.baseURL?
//            .appendingPathComponent("notifications")
//        
//        case list(threshold: Int?, pageSize: Int32 = 25)
//        
//        var rawValue: RawValue {
//            switch self {
//            case let .list(threshold, pageSize):
//                appending(urlQueryItems: [
//                    .init(key: "threshold", value: threshold),
//                    .init(key: "pageSize", value: pageSize),
//                ])
//                
//            }
//        }
//    }
//    
//    // MARK: - Reports
//    
//    enum Reports: RawRepresentable, API {
//        static let baseUrl = QappleAPI.baseURL?
//            .appendingPathComponent("reports")
//        
//        case board
//        case boardComment
//        case answer
//        
//        var rawValue: RawValue {
//            switch self {
//            case .board:
//                appending(baseString: "board")
//                
//            case .boardComment:
//                appending(baseString: "board-comment")
//                
//            case .answer:
//                appending()
//            }
//        }
//    }
//    
//    // MARK: - Token
//    
//    enum Token: RawRepresentable, API {
//        static let baseUrl = QappleAPI.baseURL?
//            .appendingPathComponent("token")
//        
//        case refresh
//        
//        var rawValue: RawValue {
//            switch self {
//            case .refresh:
//                appending(baseString: "refresh")
//            }
//        }
//    }
}
