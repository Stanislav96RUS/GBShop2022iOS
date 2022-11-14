//
//  CatalogRequestFactory.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 09.08.2022.
//

import Foundation
import Alamofire

protocol CatalogRequestFactory {
    func catalogData(idProduct: Int,
                     pageNumber: Int,
                     completionHandler: @escaping
    (AFDataResponse<[CatalogDataResult]>) -> Void)
}
