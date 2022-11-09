//
//  AddRev.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 19.08.2022.
//

import Foundation
import Alamofire

class AddRev: AbstractRequestFactory {
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

extension AddRev: AddRevRequestFactory {
    func addRev (idProduct: Int,
                 idUser: Int,
                 textReview: String,
                 completionHandler: @escaping
    (AFDataResponse<AddRevResult>) -> Void) {
        let requestModel = AddRev(baseUrl: baseUrl, idProduct: idProduct, idUser: idUser, textReview: textReview)
        self.request(request: requestModel, completionHandler:
                        completionHandler)
    }
}

extension AddRev {
    struct AddRev: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .post
        let path: String = "addRev.json"

        let idProduct: Int
        let idUser: Int
        let textReview: String
        
        var parameters: Parameters? {
            return [
                "idProduct": idProduct,
                "idUser": idUser,
                "textReview": textReview
            ]
        }
    }
}
