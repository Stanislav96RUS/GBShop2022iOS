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
    func getGoodById(product_name: String,
                     product_price: Int,
                     product_description: String,
                     completionHandler: @escaping
    (AFDataResponse<GetGoodByIdResult>) -> Void) {
        let requestModel = GetGoodById(baseUrl: baseUrl, product_name: product_name, product_price:
                                        product_price, product_description: product_description)
        self.request(request: requestModel, completionHandler:
                        completionHandler)
    }
}

extension GetGBI {
    
    struct GetGoodById: RequestRouter {
        
        let baseUrl: URL
        let method: HTTPMethod = .post
        let path: String = "getGoodById.json"
        
        let product_name: String
        let product_price: Int
        let product_description: String
        
        var parameters: Parameters? {
            return [
                "product_name": product_name,
                "product_price": product_price,
                "product_description": product_description
            ]
        }
    }
}
