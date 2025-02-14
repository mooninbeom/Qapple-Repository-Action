//
//  NotificationAPI.swift
//  QappleRepository
//
//  Created by 문인범 on 2/14/25.
//

import Foundation

/**
 알림 리스트 API
 */
public enum NotificationAPI: Sendable {
    /// 알림 목록을 조회하는 API 입니다.
    public static func fetchNotifications(
        threshold: Int?,
        pageSize: Int,
        server: Server,
        accessToken: String
    ) async throws -> NotificationList {
        let url = try QappleAPI.Notification.list(
            threshold: threshold,
            pageSize: Int32(pageSize)
        ).url(from: server)
        
        return try await NetworkService.get(url: url, accessToken: accessToken)
    }
}
