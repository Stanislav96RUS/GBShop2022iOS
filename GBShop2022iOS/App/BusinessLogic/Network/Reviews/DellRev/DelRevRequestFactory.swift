//
//  DelRevRequestFactory.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 19.08.2022.
//

import Foundation
import Alamofire

protocol DelRevRequestFactory {
    func delRev(idProduct: Int,
                idReview: Int,
                completionHandler: @escaping
    (AFDataResponse<DelRevResult>) -> Void)
}
