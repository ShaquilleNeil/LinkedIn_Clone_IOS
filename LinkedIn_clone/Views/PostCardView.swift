//
//  PostCardView.swift
//  LinkedIn_clone
//
//  Created by Shaquille O Neil on 2025-10-05.
//

import SwiftUI

struct SocialView{
    var ids: Int
    var image: String
    var title: String
}
var socialView: [SocialView] = [
    .init(ids: 0, image: "hand.thumbsup", title: "Like"),
    .init(ids: 1, image: "text.bubble", title: "Comment"),
    .init(ids: 2, image: "arrow.turn.up.right", title: "Share"),
    .init(ids: 3, image: "paperplane.fill", title: "Send")
]

 

let samplePostData = PostData(id: 1, Image: "02", title: "Jerry Joy", followers: 5, profileImage: "1")
 
 

struct PostCardView: View {
    
    let data: PostData
    
    var body: some View {
        VStack(alignment: .leading){
            Rectangle()
                .fill(.gray.opacity(0.4))
                .frame(height: 10)
            
            HStack(alignment: .center){
                Image(data.profileImage)
                    .resizable()
                    .clipShape(Circle())
                    .scaledToFit()
                    .frame(width: 70, height: 70, alignment: .leading)
                
                VStack(alignment: .leading){
                    Text(data.title)
                        .font(.body)
                    Text("\(data.followers) followers")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    
                    Text("8m")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            }.padding(.horizontal)// end of headstack
            
            Text("Our little trip to disney land")
                .padding(.horizontal)
            
            Image(data.Image)
                .resizable()
                .scaledToFit()
                .frame(alignment: .center)
 
            
            Divider()
        }
    }
}

#Preview {
    PostCardView(data: samplePostData)
}
