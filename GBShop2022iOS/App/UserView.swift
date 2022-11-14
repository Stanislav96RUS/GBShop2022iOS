//
//  UserView.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 01.09.2022.
//

import SwiftUI

struct UserView: View {
    @State private var showFriendsScreen = false
    var body: some View {
        NavigationView {
            HStack {
                AuthView(isUserLoggedIn: $showFriendsScreen)
                NavigationLink(destination: ProfileView(), isActive: $showFriendsScreen) {
                    EmptyView()
                }
            }
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
