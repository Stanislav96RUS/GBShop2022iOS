//
//  RequestsTests.swift
//  GBShop2022iOSTests
//
//  Created by Stanislav on 09.08.2022.
//

import XCTest
import Alamofire
@testable import GBShop2022iOS

class RequestsTests: XCTestCase {
    
    var requestFactory: RequestFactory!
    var id: Int!
    var login: String!
    var password: String!
    var username: String!
    var email: String!
    var gender: String!
    var creditCard: Int!
    var bio: String!
    var pageNumber: Int!
    var categoryId: Int!
    var idProduct: Int!
    
    let expectation = XCTestExpectation(description: "Request")
    let timeoutValue = 10.0
    
    
    override func setUpWithError() throws {
        try? super.setUpWithError()
        requestFactory = RequestFactory()
        id = 123
        login = "Somebody"
        password = "mypassword"
        username = "John"
        email = "some@some.ru"
        gender = "m"
        creditCard = 98723892424
        bio = "bio"
        pageNumber = 1
        categoryId = 1
        idProduct = 123
    }
    
    override func tearDownWithError() throws {
        try? super.tearDownWithError()
        requestFactory = nil
        id = nil
        login = nil
        password = nil
        username = nil
        email = nil
        gender = nil
        creditCard = nil
        bio = nil
        pageNumber = nil
        categoryId = nil
        idProduct = nil
    }
    
    func testShouldPerformAuthRequest() {
        let factory = requestFactory.makeAuthRequestFatory()
        factory.login(userName: username, password: password) { [weak self] response in
            
            switch response.result {
            case .success(let result):
                XCTAssertEqual(result.result, 1)
            case .failure:
                XCTFail()
            }
            self?.expectation.fulfill()
        }
        wait(for: [expectation], timeout: timeoutValue)
    }
    
    func testShouldPerformRegRequest() {
        let factory = requestFactory.makeRegRequestFatory()
        factory.registration(idUser: id, userName: username, password: password, email: email, gender: gender, creditCard: creditCard, bio: bio) { [weak self] response in
            
            switch response.result {
            case .success(let result):
                XCTAssertEqual(result.result, 1)
            case .failure:
                XCTFail()
            }
            self?.expectation.fulfill()
        }
        wait(for: [expectation], timeout: timeoutValue)
    }
    
    func testShouldPerformLogoutRequest() {
        let factory = requestFactory.makeOutRequestFatory()
        factory.logout(idUser: id) { [weak self] response in
            
            switch response.result {
            case .success(let result):
                XCTAssertEqual(result.result, 1)
            case .failure:
                XCTFail()
            }
            self?.expectation.fulfill()
        }
        wait(for: [expectation], timeout: timeoutValue)
    }
    
    func testShouldPerformChangeUDRequest() {
        let factory = requestFactory.makeChangeUDRequestFatory()
        factory.changeUserData(idUser: id, userName: username, password: password, email: email, gender: gender, creditCard: creditCard, bio: bio) { [weak self] response in
            
            switch response.result {
            case .success(let result):
                XCTAssertEqual(result.result, 1)
            case .failure:
                XCTFail()
            }
            self?.expectation.fulfill()
        }
        wait(for: [expectation], timeout: timeoutValue)
    }
    
    
    func testShouldPerformCatalogRequest() {
        let factory = requestFactory.makeCatalogRequestFatory()
        factory.catalogData(pageNumber: pageNumber, idCategory: categoryId) { [weak self] response in
            
            switch response.result {
            case .success(let result):
                XCTAssertEqual(result[0].id_product, 123)
            case .failure:
                XCTFail()
            }
            self?.expectation.fulfill()
        }
        wait(for: [expectation], timeout: timeoutValue)
    }
    
    func testShouldPerformGetGBIRequest() {
        let factory = requestFactory.makeGetGBIRequestFatory()
        factory.getGoodById(productName: "notebook", productPrice: 49499, productDescription: "good") { [weak self] response in
            
            switch response.result {
            case .success(let result):
                XCTAssertEqual(result.result, 1)
            case .failure:
                XCTFail()
            }
            self?.expectation.fulfill()
        }
        wait(for: [expectation], timeout: timeoutValue)
    }
}
