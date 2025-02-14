//
//  NotificationAPITests.swift
//  QappleRepository
//
//  Created by 문인범 on 2/14/25.
//

import Foundation
import Testing
@testable import QappleRepository


struct NotificationAPITests {
    
    @Test("")
    func fetchNotifications() async throws {
        let response = try await NotificationAPI.fetchNotifications(
            threshold: nil,
            pageSize: 25,
            server: .test,
            accessToken: TestHelper.shared.testToken()
        )
        
        dump(response)
    }
}
