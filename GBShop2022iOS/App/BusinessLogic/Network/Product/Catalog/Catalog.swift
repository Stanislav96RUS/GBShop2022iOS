//
//  Catalog.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 09.08.2022.
//

import Foundation
import Alamofire

class Catalog: AbstractRequestFactory {
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

extension Catalog: CatalogRequestFactory {
    func catalogData(idProduct: Int,
                     pageNumber: Int,
                     completionHandler: @escaping
    (AFDataResponse<[CatalogDataResult]>) -> Void) {
        let requestModel = CatalogData(baseUrl: baseUrl, idProduct: idProduct,
                                       pageNumber: pageNumber
                                        )
        self.request(request: requestModel, completionHandler:
                        completionHandler)
    }
}

extension Catalog {

    struct CatalogData: RequestRouter {

        let baseUrl: URL
        let method: HTTPMethod = .post
        let path: String = "catalogData.json"

        let idProduct: Int
        let pageNumber: Int
        
        var parameters: Parameters? {
            return [
                "idProduct": idProduct,
                "pageNumber": pageNumber,
                
            ]
        }
    }
}
