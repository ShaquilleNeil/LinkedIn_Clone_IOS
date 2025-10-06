//
//  SearchBarView.swift
//  LinkedIn_clone
//
//  Created by Shaquille O Neil on 2025-10-05.
//

import SwiftUI

struct SearchBarView: View {
    var body: some View {
        HStack(alignment: .center) {
            Image("demo")
                .resizable()
                .ignoresSafeArea()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 50, height: 50)
            
            RoundedRectangle(cornerRadius: 8)
                .foregroundStyle(Color.blue.opacity(0.2))
                .frame(width: 270, height: 30)
                .overlay{
                    HStack{
                        Image(systemName: "magnifyingglass")
                        
                        Text("Search")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .foregroundStyle(Color.gray)
                        Spacer()
                    }.padding()
                   
                }
            
            Image(systemName: "ellipsis.bubble.fill")
                .resizable()
                .foregroundStyle(Color.gray)
                .scaledToFit()
                .frame(width: 30, height: 30)
            
        }
    }
}

#Preview {
    SearchBarView()
}
