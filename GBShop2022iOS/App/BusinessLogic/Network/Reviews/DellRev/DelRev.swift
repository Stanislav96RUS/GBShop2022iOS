//
//  DelRev.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 19.08.2022.
//

import Foundation
import Alamofire

class DelRev: AbstractRequestFactory {
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

extension DelRev: DelRevRequestFactory {
    func delRev (idProduct: Int,
                 idReview: Int,
                 completionHandler: @escaping
    (AFDataResponse<DelRevResult>) -> Void) {
        let requestModel = DelRev(baseUrl: baseUrl, idProduct: idProduct, idReview: idReview)
        self.request(request: requestModel, completionHandler:
                        completionHandler)
    }
}

extension DelRev {
    struct DelRev: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .post
        let path: String = "delRev.json"

        let idProduct: Int
        let idReview: Int
        
        var parameters: Parameters? {
            return [
                "idProduct": idProduct,
                "idReview": idReview
            ]
        }
    }
}

