//
//  ProfileView.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 31.10.2022.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var name = ""
    @State private var age = ""
    @State private var login = ""
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Text("Профиль")
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                        .padding(.top, 32)
                        .font(.largeTitle)
                }
                HStack {
                    Text("Имя:")
                        .font(.title)
                        .foregroundColor(Color.black)
                        .padding(.leading, 10.0)
                    Spacer()
                    Text("Имя")
                        .font(.title)
                        .padding(.trailing, 10)
                }
                .padding(.top, 18)
                
                HStack {
                    Text("Ваш возраст:")
                        .font(.title)
                        .foregroundColor(Color.black)
                        .padding(.leading, 10.0)
                    Spacer()
                    Text("Возраст")
                        .font(.title)
                        .padding(.trailing, 10)
                }
                .padding(.top, 18)
                
                HStack {
                    Text("Логин:")
                        .font(.title)
                        .foregroundColor(Color.black)
                        .padding(.leading, 10.0)
                    Spacer()
                    Text("Логин")
                        .font(.title)
                        .padding(.trailing, 10)
                }
                .padding(.top, 18)
                
                HStack {
                    Text("E-mail:")
                        .font(.title)
                        .foregroundColor(Color.black)
                        .padding(.leading, 10.0)
                    Spacer()
                    Text("E-mail")
                        .font(.title)
                        .padding(.trailing, 10)
                }
                .padding(.top, 18)
                
                HStack {
                    Text("Пароль:")
                        .font(.title)
                        .foregroundColor(Color.black)
                        .padding(.leading, 10.0)
                    Spacer()
                    Text("Пароль")
                        .font(.title)
                        .padding(.trailing, 10)
                }
                .padding(.top, 18)
               
            }
        }
    }
}
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
