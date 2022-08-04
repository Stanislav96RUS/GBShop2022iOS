//
//  AuthRequestFactory.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 04.08.2022.
//

import Foundation
import Alamofire

protocol AuthRequestFactory {
    func login(userName: String, password: String, completionHandler: @escaping
(AFDataResponse<LoginResult>) -> Void)
}
