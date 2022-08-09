//
//  Reg.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 04.08.2022.
//

import Foundation
import Alamofire

class Reg: AbstractRequestFactory {
    let errorParser: AbstractErrorParser
    let sessionManager: Session
    let queue: DispatchQueue
    let baseUrl = URL(string:
                        "https://raw.githubusercontent.com/GeekBrainsTutorial/online-store-api/master/responses/")!
    
    init(
        errorParser: AbstractErrorParser,
        sessionManager: Session,
        queue: DispatchQueue = DispatchQueue.global(qos: .utility)) {
            self.errorParser = errorParser
            self.sessionManager = sessionManager
            self.queue = queue
        }
}

extension Reg: RegRequestFactory {
    func registration (idUser: Int, userName: String, password: String, email: String, gender: String, creditCard: Int, bio: String, completionHandler: @escaping
    (AFDataResponse<RegistrationResult>) -> Void) {
        let requestModel = Registration(baseUrl: baseUrl, login: userName, password: password, id: idUser,
                                        email: email, gender: gender, creditcard: creditCard, bio: bio )
        self.request(request: requestModel, completionHandler:
                        completionHandler)
    }
}

extension Reg {
    struct Registration: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .get
        let path: String = "registerUser.json"
        let login: String
        let password: String
        let id: Int
        let email: String
        let gender: String
        let creditcard: Int
        let bio: String
        var parameters: Parameters? {
            return [
                "username": login,
                "password": password,
                "iduser": id,
                "email": email,
                "gender": gender,
                "creditcard": creditcard,
                "bio": bio,
                
            ]
        }
    }
}
