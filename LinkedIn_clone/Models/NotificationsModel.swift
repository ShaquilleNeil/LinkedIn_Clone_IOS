//
//  NotificationsModel.swift
//  LinkedIn_clone
//
//  Created by Shaquille O Neil on 2025-10-05.
//

import Foundation

struct NotificationData: Identifiable {
    var id: Int
    var userName: String
    var userImage: String
    var type: NotificationType
    var message: String
    var date: String
    var reactionCount: Int = 0
    var commentCount: Int = 0
}

enum NotificationType {
    case connection
    case message
    case like
    case comment
    case job
}
