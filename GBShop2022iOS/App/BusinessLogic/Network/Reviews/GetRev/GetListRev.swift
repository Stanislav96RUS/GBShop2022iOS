//
//  GetListRev.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 19.08.2022.
//

import Foundation
import Alamofire

class GetListRev: AbstractRequestFactory {
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

extension GetListRev: GetListRevRequestFactory {
    func getListRev (idProduct: Int,
                     completionHandler: @escaping
    (AFDataResponse<[GetListRevResult]>) -> Void) {
        let requestModel = GetListRev(baseUrl: baseUrl, idProduct: idProduct)
        self.request(request: requestModel, completionHandler:
                        completionHandler)
    }
}

extension GetListRev {
    struct GetListRev: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .post
        let path: String = "getListRev.json"

        let idProduct: Int
        
        var parameters: Parameters? {
            return [
                "idProduct": idProduct
            ]
        }
    }
}
