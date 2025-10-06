//
//  InvitationView.swift
//  LinkedIn_clone
//
//  Created by Shaquille O Neil on 2025-10-05.
//

import SwiftUI

let sample = NetworkModel(id: 1, name: "Rahul Singh", position: "SDE at Amazon", mutual: 12, image: "01")

struct InvitationView: View {
    let invitation: NetworkModel
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            Image(invitation.image)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 70, height: 70,alignment: .leading)
            
            VStack(alignment: .leading){
                Text(invitation.name)
                    .font(.body)
                
                Text(invitation.position)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                Text("\(invitation.mutual) mutual connections")
                    .font(.caption)
                    .foregroundColor(.gray)
            }.frame(width: 150, height: 20, alignment: .leading)
            
            HStack{
                Image(systemName: "multiply.circle")
                    .font(.system(size: 35))
                    .foregroundStyle(.gray)
                
                Image(systemName: "checkmark.circle")
                    .font(.system(size: 35))
                    .foregroundStyle(.blue)
            }.padding(.horizontal)
            
        }.padding(.horizontal)
    }
}

#Preview {
    InvitationView(invitation: sample)
}
