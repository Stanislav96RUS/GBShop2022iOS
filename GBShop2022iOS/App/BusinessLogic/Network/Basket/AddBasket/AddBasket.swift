//
//  AddBasket.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 20.08.2022.
//

import Foundation
import Alamofire

class AddBasket: AbstractRequestFactory {
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

extension AddBasket: AddBasketRequestFactory {
    func addBasket (idProduct: Int,
                    idUser: Int,
                    completionHandler: @escaping
    (AFDataResponse<AddBasketResult>) -> Void) {
        let requestModel = AddBasket(baseUrl: baseUrl, idProduct: idProduct, idUser: idUser)
        self.request(request: requestModel, completionHandler:
                        completionHandler)
    }
}

extension AddBasket {
    struct AddBasket: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .post
        let path: String = "addBasket.json"

        let idProduct: Int
        let idUser: Int
        
        var parameters: Parameters? {
            return [
                "idProduct": idProduct,
                "idUser": idUser,
            ]
        }
    }
}
