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
}
