//
//  DelBasketRequestFactory.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 20.08.2022.
//

import Foundation
import Alamofire

protocol DelBasketRequestFactory {
    func delBasket(idProduct: Int,
                idUser: Int,
                completionHandler: @escaping
    (AFDataResponse<DelBasketResult>) -> Void)
}
