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
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions
                     launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
            // MARK: авторизация
        
        let auth = requestFactory.makeAuthRequestFatory()
        auth.login(id_user: 123, username: "Somebody",
                   password: "mypassword") { response in
            switch response.result {
            case .success(let login):
                print(login)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
//
//        // MARK: выход
//
        let out = requestFactory.makeOutRequestFatory()
        out.logout(id_user: 123) { response in
            switch response.result {
            case .success(let logout):
                print(logout)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
//
//        // MARK: изменения личных данных
//
        let ChangeUD = requestFactory.makeChangeUDRequestFatory()
        ChangeUD.changeUserData(id_user: 123, username: "Somebody", password: "mypassword", email: "some@some.ru", gender: "m", credit_card: 9872389-2424-234224-234, bio: "This is good! I think I will switch to another language" ) { response in
            switch response.result {
            case .success(let changeUserData):
                print(changeUserData)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
        
        // MARK: регистрация

        let reg = requestFactory.makeRegRequestFatory()
        reg.registration(id_user: 123, username: "Somebody", password: "mypassword", email: "some@some.ru", gender: "m", credit_card: 9872389-2424-234224-234, bio: "This is good! I think I will switch to another language") { response in
            switch response.result {
            case .success(let registration):
                print(registration)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
        
//        //     MARK: получение отдельного товара
//
        let GetGBI = requestFactory.makeGetGBIRequestFatory()
        GetGBI.getGoodById(product_name: "product_name", product_price: 123, product_description: "productdescription") { response in
            switch response.result {
            case .success(let getGoodById):
                print(getGoodById)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
//
//        //     MARK: получение списка товаров
//
        let Catalog = requestFactory.makeCatalogRequestFatory()
        Catalog.catalogData(id_product: 1, page_number: 1) { response in
            switch response.result {
            case .success(let catalogData):
                print(catalogData)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
        return true
    }
    
}

