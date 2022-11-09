//
//  PayBasket.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 20.08.2022.
//

import Foundation
import Alamofire

class PayBasket: AbstractRequestFactory {
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

extension PayBasket: PayBasketRequestFactory {
    func payBasket (idProduct: Int,
                    idUser: Int,
                    sumProductPrice: Int,
                    completionHandler: @escaping
    (AFDataResponse<PayBasketResult>) -> Void) {
        let requestModel = PayBasket(baseUrl: baseUrl, idProduct: idProduct, idUser: idUser, sumProductPrice: sumProductPrice)
        self.request(request: requestModel, completionHandler:
                        completionHandler)
    }
}

extension PayBasket {
    struct PayBasket: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .post
        let path: String = "payBasket.json"

        let idProduct: Int
        let idUser: Int
        let sumProductPrice: Int
        
        var parameters: Parameters? {
            return [
                "idProduct": idProduct,
                "idUser": idUser,
                "sumProductPrice": sumProductPrice
            ]
        }
    }
}

