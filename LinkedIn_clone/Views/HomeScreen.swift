//
//  HomeScreen.swift
//  LinkedIn_clone
//
//  Created by Shaquille O Neil on 2025-10-05.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        VStack(spacing: 20){
            ProfileAndPostView()
            PostView()
        }
    }
}

#Preview {
    HomeScreen()
}
