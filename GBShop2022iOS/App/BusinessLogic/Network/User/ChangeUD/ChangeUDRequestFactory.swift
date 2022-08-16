//
//  ChangeUDRequestFactory.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 04.08.2022.
//

import Foundation
import Alamofire

protocol ChangeUDRequestFactory {
    func changeUserData(id_user: Int,
                        username: String,
                        password: String,
                        email: String,
                        gender: String,
                        credit_card: Int,
                        bio: String,
                        completionHandler: @escaping
    (AFDataResponse<ChangeUserDataResult>) -> Void)
}
