//
//  AppDelegate.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 02.08.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let requestFactory = RequestFactory()
    
//     MARK: авторизация
    func application(_ application: UIApplication, didFinishLaunchingWithOptions
                     launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        let auth = requestFactory.makeAuthRequestFatory()
        auth.login(userName: "Somebody", password: "mypassword") { response in
            switch response.result {
            case .success(let login):
                print(login)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    return true
    }

    // MARK: выход
//    func application(_ application: UIApplication, didFinishLaunchingWithOptions
//                     launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
//
//        let out = requestFactory.makeOutRequestFatory()
//        out.logout(idUser: "123") { response in
//            switch response.result {
//            case .success(let logout):
//                print(logout)
//            case .failure(let error):
//                print(error.localizedDescription)
//            }
//        }
//    return true
//    }
    
    // MARK: изменения личных данных
//    func application(_ application: UIApplication, didFinishLaunchingWithOptions
//                     launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
//
//        let ChangeUD = requestFactory.makeChangeUDRequestFatory()
//        ChangeUD.changeUserData(idUser: 123, userName: "Somebody", password: "mypassword", email: "some@some.ru", gender: "m", creditCard: 9872389-2424-234224-234, bio: "This is good! I think I will switch to another language" ) { response in
//            switch response.result {
//            case .success(let changeUserData):
//                print(changeUserData)
//            case .failure(let error):
//                print(error.localizedDescription)
//            }
//        }
//    return true
//    }
    
    // MARK: регистрация
//    func application(_ application: UIApplication, didFinishLaunchingWithOptions
//                     launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
//
//        let reg = requestFactory.makeRegRequestFatory()
//        reg.registration(idUser: 123, userName: "Somebody", password: "mypassword", email: "some@some.ru", gender: "m", creditCard: 9872389-2424-234224-234, bio: "This is good! I think I will switch to another language" ) { response in
//            switch response.result {
//            case .success(let registration):
//                print(registration)
//            case .failure(let error):
//                print(error.localizedDescription)
//            }
//        }
//    return true
//    }
}

