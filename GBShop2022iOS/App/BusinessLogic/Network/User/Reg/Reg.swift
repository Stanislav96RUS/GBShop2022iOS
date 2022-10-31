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
    let baseUrl = URL(string: "https://stark-thicket-35171.herokuapp.com/")!

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
    func registration (idUser: Int,
                       userName: String,
                       password: String,
                       email: String,
                       gender: String,
                       creditCard: Int,
                       bio: String,
                       completionHandler: @escaping
    (AFDataResponse<RegistrationResult>) -> Void) {
        let requestModel = Registration(baseUrl: baseUrl, idUser: idUser, userName: userName, password: password,
                                        email: email, gender: gender, creditCard: creditCard, bio: bio )
        self.request(request: requestModel, completionHandler:
                        completionHandler)
    }
}

extension Reg {
    struct Registration: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .post
        let path: String = "registerUser.json"

        let idUser: Int
        let userName: String
        let password: String
        let email: String
        let gender: String
        let creditCard: Int
        let bio: String

        var parameters: Parameters? {
            return [
                "idUser": idUser,
                "userName": userName,
                "password": password,
                "email": email,
                "gender": gender,
                "creditCard": creditCard,
                "bio": bio

            ]
        }
    }
}
