//
//  AddRevRequestFactory.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 19.08.2022.
//

import Foundation
import Alamofire

protocol AddRevRequestFactory {
    func addRev(idProduct: Int,
                idUser: Int,
                textReview: String,
                completionHandler: @escaping
    (AFDataResponse<AddRevResult>) -> Void)
}
