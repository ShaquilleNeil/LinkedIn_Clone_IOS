//
//  NotificationScreen.swift
//  LinkedIn_clone
//
//  Created by Shaquille O Neil on 2025-10-05.
//

import SwiftUI

let sampleNotifications: [NotificationData] = [
    .init(
        id: 0,
        userName: "John Doe",
        userImage: "01",
        type: .like,
        message: "liked your post",
        date: "3h",
        reactionCount: 12,
        commentCount: 4
    ),
    .init(
        id: 1,
        userName: "Jane Smith",
        userImage: "02",
        type: .comment,
        message: "commented on your post",
        date: "5h",
        reactionCount: 5,
        commentCount: 2
    ),
    .init(
        id: 2,
        userName: "Michael Johnson",
        userImage: "03",
        type: .connection,
        message: "sent you a connection request",
        date: "1d"
    ),
    .init(
        id: 3,
        userName: "Emily Davis",
        userImage: "04",
        type: .message,
        message: "sent you a message",
        date: "2d"
    ),
    .init(
        id: 4,
        userName: "LinkedIn Jobs",
        userImage: "05",
        type: .job,
        message: "recommended a job for you",
        date: "4d"
    ),
    .init(
        id: 5,
        userName: "David Lee",
        userImage: "06",
        type: .like,
        message: "liked your comment on SwiftUI tips",
        date: "6h",
        reactionCount: 8
    ),
    .init(
        id: 6,
        userName: "Sophia Brown",
        userImage: "07",
        type: .comment,
        message: "replied to your post about career growth",
        date: "7h",
        commentCount: 1
    ),
    .init(
        id: 7,
        userName: "Mark Wilson",
        userImage: "08",
        type: .connection,
        message: "wants to connect with you",
        date: "12h"
    ),
    .init(
        id: 8,
        userName: "Olivia Martinez",
        userImage: "09",
        type: .message,
        message: "sent you a message regarding your recent post",
        date: "1d"
    ),
    .init(
        id: 9,
        userName: "LinkedIn Learning",
        userImage: "10",
        type: .job,
        message: "suggested a course based on your interests",
        date: "2d"
    ),
    .init(
        id: 10,
        userName: "Chris Evans",
        userImage: "11",
        type: .like,
        message: "liked your post about iOS development",
        date: "3h",
        reactionCount: 20
    ),
    .init(
        id: 11,
        userName: "Emma Watson",
        userImage: "12",
        type: .comment,
        message: "commented on your update",
        date: "8h",
        commentCount: 3
    )
]


struct NotificationScreen: View {
    var body: some View {
        VStack{
            SearchBarView()
            Divider()
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 0){
                    ForEach(sampleNotifications, id: \.id){
                        notification in
                        NotificationCardView(NotifiData: notification)
                    }
                }
            }
        }
        
    }
}

#Preview {
    NotificationScreen()
}
