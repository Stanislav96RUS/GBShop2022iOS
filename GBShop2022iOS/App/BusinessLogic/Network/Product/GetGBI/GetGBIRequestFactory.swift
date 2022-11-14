//
//  GetGBIRequestFactory.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 09.08.2022.
//

import Foundation
import Alamofire

protocol GetGBIRequestFactory {
    func getGoodById(productName: String,
                     productPrice: Int,
                     productDescription: String,
                     completionHandler: @escaping
    (AFDataResponse<GetGoodByIdResult>) -> Void)
}
