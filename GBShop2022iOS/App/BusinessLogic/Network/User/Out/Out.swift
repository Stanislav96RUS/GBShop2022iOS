//
//  Out.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 04.08.2022.
//

import Foundation
import Alamofire

class Out: AbstractRequestFactory {
    
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

extension Out: OutRequestFactory {
    
    func logout(id_user: Int, completionHandler: @escaping
    (AFDataResponse<LogoutResult>) -> Void) {
        let requestModel = Logout(baseUrl: baseUrl, id_user: id_user)
        self.request(request: requestModel, completionHandler:
                        completionHandler)
    }
}

extension Out {
    
    struct Logout: RequestRouter {
        
        let baseUrl: URL
        let method: HTTPMethod = .post
        let path: String = "logout.json"
        
        let id_user: Int
       
        var parameters: Parameters? {
            return [
                "id_user": id_user
            ]
        }
    }
}
