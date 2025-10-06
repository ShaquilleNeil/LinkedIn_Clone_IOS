//
//  ProfileAndPostView.swift
//  LinkedIn_clone
//
//  Created by Shaquille O Neil on 2025-10-05.
//

import SwiftUI

struct ProfileAndPostView: View {
    var body: some View {
        VStack(alignment: .leading){
            SearchBarView()
            
            HStack{
             Image(systemName: "square.and.pencil")
            Text("Share a post")
            }.padding(.horizontal)
            
            Divider()
            
            HStack{
                Image(systemName: "photo")
                    .foregroundStyle(.blue)
                Text("Photo")
                Spacer()
                Image(systemName: "video.fill")
                    .foregroundStyle(.green)
                Text("Video")
                Spacer()
                Image(systemName: "calendar")
                    .foregroundStyle(.orange)
                Text("Calendar")


            }.padding(.horizontal)
            
        }
    }
}

#Preview {
    ProfileAndPostView()
}
