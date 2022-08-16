//
//  CatalogRequestFactory.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 09.08.2022.
//

import Foundation
import Alamofire

protocol CatalogRequestFactory {
    func catalogData(id_product: Int,
                     page_number: Int,
                     completionHandler: @escaping
    (AFDataResponse<[ProductResult]>) -> Void)
}
