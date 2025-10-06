//
//  MyNetworkScreen.swift
//  LinkedIn_clone
//
//  Created by Shaquille O Neil on 2025-10-05.
//

import SwiftUI


let sampleData: [NetworkModel] = [
    .init(id: 1, name: "Rahul Singh", position: "SDE at Amazon", mutual: 12, image: "01"),
    .init(id: 2, name: "Ananya Verma", position: "Product Manager at Google", mutual: 8, image: "02"),
    .init(id: 3, name: "Vikram Mehta", position: "Data Scientist at Microsoft", mutual: 15, image: "03"),
    .init(id: 4, name: "Sofia Khan", position: "UX Designer at Adobe", mutual: 5, image: "04"),
    .init(id: 5, name: "Arjun Patel", position: "DevOps Engineer at Netflix", mutual: 9, image: "05"),
    .init(id: 6, name: "Emily Johnson", position: "HR Specialist at Meta", mutual: 4, image: "06"),
    .init(id: 7, name: "Daniel Lee", position: "AI Researcher at OpenAI", mutual: 17, image: "07"),
    .init(id: 8, name: "Priya Sharma", position: "Marketing Lead at Spotify", mutual: 6, image: "08"),
    .init(id: 9, name: "Carlos Rivera", position: "Solutions Architect at AWS", mutual: 10, image: "09"),
    .init(id: 10, name: "Maya Chen", position: "Frontend Developer at Apple", mutual: 11, image: "10")
]

 

struct MyNetworkScreen: View {
    var body: some View {
        VStack{
            SearchBarView()
            
            HStack{
                Text("Manage my network")
                    .font(.body)
                    .foregroundStyle(.blue)
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundStyle(.gray)
            }.padding(.horizontal)
            
            Rectangle()
                .fill(Color.gray.opacity(0.4))
                .frame(height: 10)
                .ignoresSafeArea()
            
            ScrollView(.vertical, showsIndicators: false)
            {
                HStack {
                    Text("Invitations")
                        .font(.body)
                        .foregroundStyle(.blue)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundStyle(.gray)
                }.padding(.horizontal)
                
                Divider()
                
                ForEach(sampleData, id: \.id) {
                    invitation in
                    InvitationView(invitation: invitation)
                    Divider()
                }
            }
        }
    }
}

#Preview {
    MyNetworkScreen()
}
