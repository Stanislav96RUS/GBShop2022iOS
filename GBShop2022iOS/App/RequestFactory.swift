//
//  RequestFactory.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 04.08.2022.
//

import Foundation
import Alamofire

class RequestFactory {

    func makeErrorParser() -> AbstractErrorParser {
        return ErrorParser()
    }

    lazy var commonSession: Session = {
        let configuration = URLSessionConfiguration.default
        configuration.httpShouldSetCookies = false
        configuration.headers = .default
        let manager = Session(configuration: configuration)
        return manager
    }()

    let sessionQueue = DispatchQueue.global(qos: .utility)

    func makeAuthRequestFatory() -> AuthRequestFactory {
        let errorParser = makeErrorParser()
        return Auth(errorParser: errorParser, sessionManager: commonSession, queue: sessionQueue)
    }

    func makeOutRequestFatory() -> OutRequestFactory {
        let errorParser = makeErrorParser()
        return Out(errorParser: errorParser, sessionManager: commonSession, queue: sessionQueue)
    }

    func makeChangeUDRequestFatory() -> ChangeUDRequestFactory {
        let errorParser = makeErrorParser()
        return ChangeUD(errorParser: errorParser, sessionManager: commonSession, queue: sessionQueue)
    }

    func makeRegRequestFatory() -> RegRequestFactory {
        let errorParser = makeErrorParser()
        return Reg(errorParser: errorParser, sessionManager: commonSession, queue: sessionQueue)
    }

    func makeGetGBIRequestFatory() -> GetGBIRequestFactory {
        let errorParser = makeErrorParser()
        return GetGBI(errorParser: errorParser, sessionManager: commonSession, queue: sessionQueue)
    }

    func makeCatalogRequestFatory() -> CatalogRequestFactory {
        let errorParser = makeErrorParser()
        return Catalog(errorParser: errorParser, sessionManager: commonSession, queue: sessionQueue)
    }
    
    func makeGetListRevRequestFatory() -> GetListRevRequestFactory {
        let errorParser = makeErrorParser()
        return GetListRev(errorParser: errorParser, sessionManager: commonSession, queue: sessionQueue)
    }
    
    func makeAddRevRequestFatory() -> AddRevRequestFactory {
        let errorParser = makeErrorParser()
        return AddRev(errorParser: errorParser, sessionManager: commonSession, queue: sessionQueue)
    }

    func makeDelRevRequestFatory() -> DelRevRequestFactory {
        let errorParser = makeErrorParser()
        return DelRev(errorParser: errorParser, sessionManager: commonSession, queue: sessionQueue)
    }

    func makeAddBasketRequestFatory() -> AddBasketRequestFactory {
        let errorParser = makeErrorParser()
        return AddBasket(errorParser: errorParser, sessionManager: commonSession, queue: sessionQueue)
    }
    
    func makeDelBasketRequestFatory() -> DelBasketRequestFactory {
        let errorParser = makeErrorParser()
        return DelBasket(errorParser: errorParser, sessionManager: commonSession, queue: sessionQueue)
    }

    func makePayBasketRequestFatory() -> PayBasketRequestFactory {
        let errorParser = makeErrorParser()
        return PayBasket(errorParser: errorParser, sessionManager: commonSession, queue: sessionQueue)
    }
}
