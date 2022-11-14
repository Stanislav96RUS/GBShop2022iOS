//
//  PayBasketRequestFactory.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 20.08.2022.
//

import Foundation
import Alamofire

protocol PayBasketRequestFactory {
    func payBasket(idProduct: Int,
                idUser: Int,
                sumProductPrice: Int,
                completionHandler: @escaping
    (AFDataResponse<PayBasketResult>) -> Void)
}
