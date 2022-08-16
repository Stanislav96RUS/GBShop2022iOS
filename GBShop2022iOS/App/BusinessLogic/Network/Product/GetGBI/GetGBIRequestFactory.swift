//
//  GetGBIRequestFactory.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 09.08.2022.
//

import Foundation
import Alamofire

protocol GetGBIRequestFactory {
    func getGoodById(product_name: String,
                     product_price: Int,
                     product_description: String,
                     completionHandler: @escaping
    (AFDataResponse<GetGoodByIdResult>) -> Void)
}
