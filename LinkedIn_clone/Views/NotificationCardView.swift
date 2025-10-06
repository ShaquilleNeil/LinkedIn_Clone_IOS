//
//  NotificationCardView.swift
//  LinkedIn_clone
//
//  Created by Shaquille O Neil on 2025-10-05.
//

import SwiftUI

let sampleNotification = NotificationData(
    id: 0,
    userName: "John Doe",
    userImage: "01",          // your image asset name
    type: .like,
    message: "liked your post",
    date: "4h",
    reactionCount: 15,
    commentCount: 3
)

struct NotificationCardView: View {
    let NotifiData: NotificationData
    var body: some View {
        HStack(alignment: .center) {
            Image(systemName: "circle.fill")
                .foregroundColor(.blue)
                .font(.caption2)
            Image(NotifiData.userImage)
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
            
            
            //messages and reactions
            VStack(alignment: .leading, spacing: 4) {
                ( Text("The post of ") + Text(NotifiData.userName).bold() + Text(" is very popular ") ).font(.body)
                HStack {
                    Text("\(NotifiData.reactionCount) reactions")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                    Text("\(NotifiData.commentCount) comments")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
               
            }.padding(.horizontal, 8)
           
            
            
            Spacer()
            
            VStack(alignment: .center) {
                Text(NotifiData.date)
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                Text("⋮")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                
            }.padding(.horizontal)
            
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical)
        .background(Color.blue.opacity(0.3))
        
     
    }
}

#Preview {
    NotificationCardView(NotifiData: sampleNotification)
}
