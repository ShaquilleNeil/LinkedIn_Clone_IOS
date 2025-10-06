//
//  PostScreen.swift
//  LinkedIn_clone
//
//  Created by Shaquille O Neil on 2025-10-05.
//

import SwiftUI

struct PostScreen: View {
    @State private var postText: String = ""
  
    var body: some View {
    
        
        VStack(alignment: .leading){
            HStack{
                Image(systemName: "multiply")
                Image("demo")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 60, height: 60)
                
                Text("Everyone")
                    .font(.caption)
                    .foregroundStyle(.secondary)
                
                Image(systemName: "arrowtriangle.down.fill")
                    .foregroundColor(.black)
                    .font(.caption)
                 
                
                Spacer()
                
                Image(systemName: "clock")
                    .padding(.horizontal, 5)
               
                
                RoundedRectangle(cornerRadius: 18)
                    .fill(Color.gray.opacity(0.2))
                    .frame(width: 100, height: 30)
                    .overlay(
                        Text("Post")
                            .font(.caption2)
                            .foregroundColor(.black)
                    )
                    
                    
                
                    
                    
            }.padding(.horizontal)
            
            
            ZStack(alignment: .topLeading){
          
                if postText.isEmpty {
                                Text("Share your opinion...")
                                    .font(.caption2)
                                    .foregroundColor(.gray)
                                    .padding(.top, 4)
                                    .padding(.leading, 6)
                            }
                    
                TextEditor(text: $postText)
                    .padding(EdgeInsets(top: 8, leading: 4, bottom: 0, trailing: 0))
                    .background(Color.clear)
                    .scrollContentBackground(.hidden)
                    .foregroundStyle(.black)
            
                   
            }.frame(height: 620)
                .padding(.horizontal)
           
            HStack(){
                Spacer()
                Image(systemName: "photo")
                    .padding(.horizontal, 5)
                Image(systemName: "plus")
                    .padding(.horizontal, 5)
            }.padding(.horizontal)
            Spacer()
        }
    }
}

#Preview {
    PostScreen()
}
