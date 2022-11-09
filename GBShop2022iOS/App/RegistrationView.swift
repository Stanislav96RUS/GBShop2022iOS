//
//  RegistrationView.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 31.10.2022.
//

import SwiftUI

struct RegistrationView: View {
    
    @State private var name = ""
    @State private var age = ""
    @State private var login = ""
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Text("Регистрация")
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                        .padding(.top, 32)
                        .font(.largeTitle)
                }
                VStack(alignment: .leading) {
                    Text("Имя:")
                        .foregroundColor(Color.black)
                    TextField("Введите ваше имя", text: $name)
                        .frame(maxWidth: 370)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .border(Color.gray, width: 2)
                        .cornerRadius(4)
                }
                .padding(.top, 32)
                
                VStack (alignment: .leading){
                    Text("Ваш возраст:")
                        .foregroundColor(Color.black)
                    TextField("Введите ваш возраст", text: $age)
                        .frame(maxWidth: 370)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .border(Color.gray, width: 2)
                        .cornerRadius(4)
                }
                
                VStack (alignment: .leading){
                    Text("Логин:")
                        .foregroundColor(Color.black)
                    TextField("Введите ваш логин", text: $login)
                        .frame(maxWidth: 370)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .border(Color.gray, width: 2)
                        .cornerRadius(4)
                }
                VStack (alignment: .leading) {
                    Text("E-mail:")
                        .foregroundColor(Color.black)
                    TextField("Введите ваш E-mail", text: $email)
                        .frame(maxWidth: 370)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .border(Color.gray, width: 2)
                        .cornerRadius(4)
                }
                
                VStack (alignment: .leading) {
                    Text("Пароль:")
                        .foregroundColor(Color.black)
                    SecureField("Введите ваш пароль", text: $password)
                        .frame(maxWidth: 370)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .border(Color.gray, width: 2)
                        .cornerRadius(4)
                }
                HStack {
                    NavigationLink(destination: RegSuccessView(), label: {
                        Text ("Зарегистрироваться")
                            .frame(width: 370.0, height: 40.0)
                            .foregroundColor(Color.white)
                    } )
                    }
                .frame(maxWidth: 370)
                .background(Color.blue)
                .cornerRadius(7)
                .padding(.top, 32)
            }
        }
    }
    struct RegistrationView_Previews: PreviewProvider {
        static var previews: some View {
            RegistrationView()
        }
    }
}
    
