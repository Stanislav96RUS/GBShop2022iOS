//
//  AuthView.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 01.09.2022.
//

import SwiftUI
import Combine

struct AuthView: View {
    
    
    
    @Binding var isUserLoggedIn: Bool
    
    @State private var showIncorrectCredentialsAlert = false
    @State private var login = ""
    @State private var password = ""
    @State private var shouldShowLogo = true
    @State private var showFriendsScreen = false
    
    private func verifyLoginData() {
        if login == "1" && password == "1" {
            isUserLoggedIn = true
        } else {
            showIncorrectCredentialsAlert = true
        }
        
        password = "" }
    
    
    private let keyboardPublisher = Publishers.Merge(
        NotificationCenter.default.publisher(for: UIResponder.keyboardWillShowNotification)
            .map { notification in true } ,
        NotificationCenter.default.publisher(for: UIResponder.keyboardWillHideNotification)
            .map { notification in false }
    ).eraseToAnyPublisher()
    var body: some View {
        ZStack {
            ScrollView {
                VStack {
                    if self.shouldShowLogo {
                        Text("GBShop2022iOS")
                            .fontWeight(.semibold)
                            .foregroundColor(Color.black)
                            .padding(.top, 50)
                            .font(.largeTitle)
                    }
                    
                    HStack {
                        Text("Логин:")
                            .foregroundColor(Color.black)
                            .padding(.top, 32.0)
                            .padding(.leading, 10.0)
                        Spacer()
                    }
                    
                    HStack {
                        TextField("Введите ваш логин", text: $login)
                            .frame(maxWidth: 370)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .border(Color.gray, width: 2)
                            .cornerRadius(4)
                            .padding(.leading, 10.0)
                        Spacer()
                    }
                    
                    HStack {
                        Text("Пароль:")
                            .foregroundColor(Color.black)
                            .padding(.leading, 10.0)
                        Spacer()
                    }
                    
                    HStack {
                        SecureField("Введите ваш пароль", text: $password)
                            .frame(maxWidth: 370)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .border(Color.gray, width: 2)
                            .cornerRadius(4)
                            .padding(.leading, 10.0)
                        Spacer()
                    }
                    
                    HStack {
                        Button(action: verifyLoginData) {
                            Text ("Войти")
                                .padding(.leading, 10.0)
                                .frame(width: 370.0, height: 40.0)
                                .foregroundColor(Color.white)
                                .background(Color.green)
                                .disabled(login.isEmpty || password.isEmpty)
                                .cornerRadius(7)
                        }

                    }
                    .padding(.top, 15.0)
                    
                    HStack {
                        Text("Ещё не зарегистрированы?")
                            .foregroundColor(Color.gray)
                            .padding(.leading, 10.0)
                            .frame(width: 370.0, height: 40.0)
                        Spacer()
                        
                    }
                    .padding(.top, 100.0)
                    
                    
                    HStack {
                        NavigationLink(destination: RegistrationView(), label: {
                            Text ("Зарегистрироваться")
                                .frame(width: 370.0, height: 40.0)
                                .foregroundColor(Color.white)
                        } )
                    }
                    .frame(maxWidth: 370)
                    .background(Color.gray)
                    .cornerRadius(7)
                    Spacer()
                }
            }
        }
        .alert(isPresented: self.$showIncorrectCredentialsAlert, content: {
            
            Alert(title: Text("Неправильные учетные данные"), message: Text("Неверный логин или пароль"), dismissButton: .cancel())
        })
        .onTapGesture {
            UIApplication.shared.endEditing()
        }
        .onReceive(self.keyboardPublisher) { isKeyboardShow in
            withAnimation(.easeIn(duration: 0.5)) {
                self.shouldShowLogo = !isKeyboardShow
            }
        }
    }
    }

    extension UIApplication {
        func endEditing() {
            self.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
            }
        }
