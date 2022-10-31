//
//  AddBasketRequestFactory.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 20.08.2022.
//

import Foundation
import Alamofire

protocol AddBasketRequestFactory {
    func addBasket(idProduct: Int,
                idUser: Int,
                completionHandler: @escaping
    (AFDataResponse<AddBasketResult>) -> Void)
}
