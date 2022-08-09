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
    let baseUrl = URL(string:
                        "https://raw.githubusercontent.com/GeekBrainsTutorial/online-store-api/master/responses/")!
    
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
    func getGoodById(productName: String, productPrice: Int, productDescription: String, completionHandler: @escaping
    (AFDataResponse<GetGoodByIdResult>) -> Void) {
        let requestModel = GetGoodById(baseUrl: baseUrl, productname: productName, productprice:
                                                productPrice, productdescription: productDescription)
        self.request(request: requestModel, completionHandler:
                        completionHandler)
    }
}

extension GetGBI {
    struct GetGoodById: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .get
        let path: String = "getGoodById.json"
        let productname: String
        let productprice: Int
        let productdescription: String
        var parameters: Parameters? {
            return [
                "productname": productname,
                "productprice": productprice,
                "productdescription": productdescription
            ]
        }
    }
}
