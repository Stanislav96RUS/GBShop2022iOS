//
//  CatalogRequestFactory.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 09.08.2022.
//

import Foundation
import Alamofire

protocol CatalogRequestFactory {
    func catalogData(pageNumber: Int, idCategory: Int, completionHandler: @escaping
    (AFDataResponse<[ProductResult]>) -> Void)
}
