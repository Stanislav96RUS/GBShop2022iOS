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
    
    // TODO: объединить в одну тестовую модель(например, создать TestsModel, там создавать тестовую структуру, а сюда только передавать эту структуру), это существенно сократит и количество переменных, и объем кода. А также добавит читаемость
    
    var requestFactory: RequestFactory!
    var idUser: Int!
    var password: String!
    var userName: String!
    var email: String!
    var gender: String!
    var creditCard: Int!
    var bio: String!
    var pageNumber: Int!
    var idProduct: Int!
    var productName: String!
    var productPrice: Int!
    
    let expectation = XCTestExpectation(description: "Request")
    let timeoutValue = 10.0
    
    override func setUpWithError() throws {
        try? super.setUpWithError()
        requestFactory = RequestFactory()
        idUser = 123
        password = "mypassword"
        userName = "John"
        email = "some@some.ru"
        gender = "m"
        creditCard = 98723892424
        bio = "bio"
        pageNumber = 1
        idProduct = 123
        productName = "Notebook"
        productPrice = 46000
    }
    
    override func tearDownWithError() throws {
        try? super.tearDownWithError()
        requestFactory = nil
        idUser = nil
        password = nil
        userName = nil
        email = nil
        gender = nil
        creditCard = nil
        bio = nil
        pageNumber = nil
        idProduct = nil
        productName = nil
        productPrice = nil
    }
    
    func testShouldPerformAuthRequest() {
        let auth = requestFactory.makeAuthRequestFatory()
        auth.login(idUser: idUser, userName: userName, password: password) { [weak self] response in
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
        let reg = requestFactory.makeRegRequestFatory()
        reg.registration(idUser: idUser,
                             userName: userName,
                             password: password,
                             email: email,
                             gender: gender,
                             creditCard: creditCard,
                             bio: bio) { [weak self] response in
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
        let logout = requestFactory.makeOutRequestFatory()
        logout.logout(idUser: idUser) { [weak self] response in
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
        let changeUD = requestFactory.makeChangeUDRequestFatory()
        changeUD.changeUserData(idUser: idUser,
                               userName: userName,
                               password: password,
                               email: email,
                               gender: gender,
                               creditCard: creditCard,
                               bio: bio) { [weak self] response in
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
        let catalog = requestFactory.makeCatalogRequestFatory()
        catalog.catalogData(idProduct: idProduct,
                            pageNumber: pageNumber
        ) { [weak self] response in
            switch response.result {
            case .success(let result):
                XCTAssertEqual(result[0].result, 1)
            case .failure:
                XCTFail()
            }
            self?.expectation.fulfill()
        }
        wait(for: [expectation], timeout: timeoutValue)
    }

    func testShouldPerformGetGBIRequest() {
        let getGBI = requestFactory.makeGetGBIRequestFatory()
        getGBI.getGoodById(productName: "notebook",
                            productPrice: 49499,
                            productDescription: "good") { [weak self] response in
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

    func testShouldPerformDelRevRequest() {
        let delRev = requestFactory.makeDelRevRequestFatory()
        delRev.delRev(idProduct: 123, idReview: 127) { response in
            switch response.result {
            case .success(let result):
                XCTAssertEqual(result.result, 1)
            case .failure:
                XCTFail()
            }
            self.expectation.fulfill()
        }
        wait(for: [expectation], timeout: timeoutValue)
    }

    func testShouldPerformAddRevRequest() {
        let addRev = requestFactory.makeAddRevRequestFatory()
        addRev.addRev(idProduct: 127, idUser: 123, textReview: "отзыв о товаре 127") { response in
            switch response.result {
            case .success(let result):
                XCTAssertEqual(result.result, 1)
            case .failure:
                XCTFail()
            }
            self.expectation.fulfill()
        }
        wait(for: [expectation], timeout: timeoutValue)
    }

    func testShouldPerformGetListRevRequest() {
        let getListRev = requestFactory.makeGetListRevRequestFatory()
        getListRev.getListRev(idProduct: 127) { response in
            switch response.result {
            case .success(let result):
                XCTAssertEqual(result[0].result, 1)
            case .failure:
                XCTFail()
            }
            self.expectation.fulfill()
        }
        wait(for: [expectation], timeout: timeoutValue)
    }
    
    func testShouldPerformAddBasketRequest() {
        let addBasket = requestFactory.makeAddBasketRequestFatory()
        addBasket.addBasket(idProduct: 127, idUser: 123) { response in
            switch response.result {
            case .success(let result):
                XCTAssertEqual(result.result, 1)
            case .failure:
                XCTFail()
            }
            self.expectation.fulfill()
        }
        wait(for: [expectation], timeout: timeoutValue)
        }
        
    func testShouldPerformDelBasketRequest() {
        let delBasket = requestFactory.makeDelBasketRequestFatory()
        delBasket.delBasket(idProduct: 127, idUser: 123) { response in
            switch response.result {
            case .success(let result):
                XCTAssertEqual(result.result, 1)
            case .failure:
                XCTFail()
            }
            self.expectation.fulfill()
        }
        wait(for: [expectation], timeout: timeoutValue)
        }
        
    func testShouldPerformPayBasketRequest() {
        let payBasket = requestFactory.makePayBasketRequestFatory()
        payBasket.payBasket(idProduct: 127, idUser: 123, sumProductPrice: 90000 ) { response in
            switch response.result {
            case .success(let result):
                XCTAssertEqual(result.result, 1)
            case .failure:
                XCTFail()
            }
            self.expectation.fulfill()
        }
        wait(for: [expectation], timeout: timeoutValue)
            
        }
    }
