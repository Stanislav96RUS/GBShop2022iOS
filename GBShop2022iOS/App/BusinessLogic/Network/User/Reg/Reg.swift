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
    func registration (id_user: Int, username: String, password: String, email: String, gender: String, credit_card: Int, bio: String, completionHandler: @escaping
    (AFDataResponse<RegistrationResult>) -> Void) {
        let requestModel = Registration(baseUrl: baseUrl, id_user: id_user, username: username, password: password,
                                        email: email, gender: gender, credit_card: credit_card, bio: bio )
        self.request(request: requestModel, completionHandler:
                        completionHandler)
    }
}

extension Reg {
    struct Registration: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .post
        let path: String = "registerUser.json"
        
        let id_user: Int
        let username: String
        let password: String
        let email: String
        let gender: String
        let credit_card: Int
        let bio: String
        
        var parameters: Parameters? {
            return [
                "id_user": id_user,
                "username": username,
                "password": password,
                "email": email,
                "gender": gender,
                "credit_card": credit_card,
                "bio": bio,
                
            ]
        }
    }
}
