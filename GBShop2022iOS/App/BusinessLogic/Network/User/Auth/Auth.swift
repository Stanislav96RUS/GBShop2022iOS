//
//  Auth.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 04.08.2022.
//

import Foundation
import Alamofire

class Auth: AbstractRequestFactory {
   
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

extension Auth: AuthRequestFactory {
    
    func login(id_user: Int,
               username: String,
               password: String,
               completionHandler: @escaping (AFDataResponse<LoginResult>) -> Void) {
        let requestModel = Login(baseUrl: baseUrl, id_user: id_user,
                                 username: username,
                                 password: password)
        self.request(request: requestModel,
                     completionHandler: completionHandler)
    }
}

extension Auth {
    
    struct Login: RequestRouter {
       
        let baseUrl: URL
        let method: HTTPMethod = .post
        let path: String = "login.json"
        
        let id_user: Int
        let username: String
        let password: String
        
        var parameters: Parameters? {
            return [
                "id_user": id_user,
                "username": username,
                "password": password
            ]
        }
    }
}
