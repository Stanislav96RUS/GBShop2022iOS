//
//  OutRequestFactory.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 04.08.2022.
//

import Foundation
import Alamofire

protocol OutRequestFactory {
    func logout(id_user: Int, completionHandler: @escaping
    (AFDataResponse<LogoutResult>) -> Void)
}
