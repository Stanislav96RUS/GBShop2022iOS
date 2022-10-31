//
//  ChangeUserDataResult.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 04.08.2022.
//

import Foundation
import Alamofire

class ChangeUD: AbstractRequestFactory {
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

extension ChangeUD: ChangeUDRequestFactory {
    func changeUserData(idUser: Int,
                        userName: String,
                        password: String,
                        email: String,
                        gender: String,
                        creditCard: Int,
                        bio: String,
                        completionHandler: @escaping
    (AFDataResponse<ChangeUserDataResult>) -> Void) {
        let requestModel = ChangeUserData(baseUrl: baseUrl, idUser: idUser, userName: userName, password: password,
                                          email: email, gender: gender, creditCard: creditCard, bio: bio )
        self.request(request: requestModel, completionHandler:
                        completionHandler)
    }
}

extension ChangeUD {
    struct ChangeUserData: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .post
        let path: String = "changeUserData.json"

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
