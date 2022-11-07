//
//  GetListRevRequestFactory.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 19.08.2022.
//

import Foundation
import Alamofire

protocol GetListRevRequestFactory {
    func getListRev(idProduct: Int,
                    completionHandler: @escaping
    (AFDataResponse<[GetListRevResult]>) -> Void)
}
