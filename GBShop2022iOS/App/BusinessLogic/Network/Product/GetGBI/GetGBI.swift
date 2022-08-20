//
//  GetGBI.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 09.08.2022.
//

import Foundation
import Alamofire

class GetGBI: AbstractRequestFactory {
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

extension GetGBI: GetGBIRequestFactory {
    func getGoodById(productName: String,
                     productPrice: Int,
                     productDescription: String,
                     completionHandler: @escaping
    (AFDataResponse<GetGoodByIdResult>) -> Void) {
        let requestModel = GetGoodById(baseUrl: baseUrl, productName: productName, productPrice:
                                        productPrice, productDescription: productDescription)
        self.request(request: requestModel, completionHandler:
                        completionHandler)
    }
}

extension GetGBI {

    struct GetGoodById: RequestRouter {

        let baseUrl: URL
        let method: HTTPMethod = .post
        let path: String = "getGoodById.json"

        let productName: String
        let productPrice: Int
        let productDescription: String

        var parameters: Parameters? {
            return [
                "productName": productName,
                "productPrice": productPrice,
                "productDescription": productDescription
            ]
        }
    }
}
