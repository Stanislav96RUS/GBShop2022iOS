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

//        // MARK: авторизация
//        let auth = requestFactory.makeAuthRequestFatory()
//        auth.login(idUser: 123, userName: "Somebody",
//                   password: "mypassword") { response in
//            switch response.result {
//            case .success(let login):
//                print(login)
//            case .failure(let error):
//                print(error.localizedDescription)
//            }
//        }
//        // MARK: выход
//        let out = requestFactory.makeOutRequestFatory()
//        out.logout(idUser: 123) { response in
//            switch response.result {
//            case .success(let logout):
//                print(logout)
//            case .failure(let error):
//                print(error.localizedDescription)
//            }
//        }
//        // MARK: изменения личных данных
//        let changeUD = requestFactory.makeChangeUDRequestFatory()
//        changeUD.changeUserData(idUser: 123,
//                                userName: "Somebody",
//                                password: "mypassword",
//                                email: "some@some.ru",
//                                gender: "m",
//                                creditCard: 9872389-2424-234224-234,
//                                bio: "This is good! I think I will switch to another language" ) { response in
//            switch response.result {
//            case .success(let changeUserData):
//                print(changeUserData)
//            case .failure(let error):
//                print(error.localizedDescription)
//            }
//        }
//        // MARK: регистрация
//        let reg = requestFactory.makeRegRequestFatory()
//        reg.registration(idUser: 123,
//                         userName: "Somebody",
//                         password: "mypassword",
//                         email: "some@some.ru",
//                         gender: "m",
//                         creditCard: 9872389-2424-234224-234,
//                         bio: "This is good! I think I will switch to another language") { response in
//            switch response.result {
//            case .success(let registration):
//                print(registration)
//            case .failure(let error):
//                print(error.localizedDescription)
//            }
//        }
//        // MARK: получение отдельного товара
//        let getGBI = requestFactory.makeGetGBIRequestFatory()
//        getGBI.getGoodById(productName: "productName",
//                           productPrice: 123,
//                           productDescription: "productdescription") { response in
//            switch response.result {
//            case .success(let getGoodById):
//                print(getGoodById)
//            case .failure(let error):
//                print(error.localizedDescription)
//            }
//        }
//        // MARK: получение списка товаров
//        let catalog = requestFactory.makeCatalogRequestFatory()
//        catalog.catalogData(idProduct: 1, pageNumber: 1) { response in
//            switch response.result {
//            case .success(let catalogData):
//                print(catalogData)
//            case .failure(let error):
//                print(error.localizedDescription)
//            }
//        }
//        // MARK: получение списка отзывов о товаре
//        let getListRev = requestFactory.makeGetListRevRequestFatory()
//        getListRev.getListRev(idProduct: 127) { response in
//            switch response.result {
//            case .success(let getListRev):
//                print(getListRev)
//            case .failure(let error):
//                print(error.localizedDescription)
//            }
//        }
//        // MARK: добавление отзыва о товаре
//        let addRev = requestFactory.makeAddRevRequestFatory()
//        addRev.addRev(idProduct: 127, idUser: 123, textReview: "отзыв о товаре 127") { response in
//            switch response.result {
//            case .success(let addRev):
//                print(addRev)
//            case .failure(let error):
//                print(error.localizedDescription)
//            }
//        }
//        // MARK: удаление отзыва о товаре
//        let delRev = requestFactory.makeDelRevRequestFatory()
//        delRev.delRev(idProduct: 123, idReview: 127) { response in
//            switch response.result {
//            case .success(let delRev):
//                print(delRev)
//            case .failure(let error):
//                print(error.localizedDescription)
//            }
//        }
        // MARK: добавление товара в корзину
        let addBasket = requestFactory.makeAddBasketRequestFatory()
        addBasket.addBasket(idProduct: 127, idUser: 123) { response in
            switch response.result {
            case .success(let addBasket):
                print(addBasket)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
        // MARK: удаление товара из корзины
        let delBasket = requestFactory.makeDelBasketRequestFatory()
        delBasket.delBasket(idProduct: 127, idUser: 123) { response in
            switch response.result {
            case .success(let delBasket):
                print(delBasket)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
        // MARK: покупка товара из корзины
        let payBasket = requestFactory.makePayBasketRequestFatory()
        payBasket.payBasket(idProduct: 127, idUser: 123, sumProductPrice: 90000 ) { response in
            switch response.result {
            case .success(let payBasket):
                print(payBasket)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
        return true
    }

}
