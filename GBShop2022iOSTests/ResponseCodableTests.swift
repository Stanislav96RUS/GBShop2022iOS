//
//  ResponseCodableTests.swift
//  GBShop2022iOSTests
//
//  Created by Stanislav on 09.08.2022.
//

import XCTest
import Alamofire

@testable import GBShop2022iOS

struct PostStub: Codable { let userId: Int
    let id: Int
    let title: String
    let body: String
}
enum ApiErrorStub: Error {
    case fatalError
}
struct ErrorParserStub: AbstractErrorParser {
    func parse(_ result: Error) -> Error {
    return ApiErrorStub.fatalError
    }

    func parse(response: HTTPURLResponse?, data: Data?, error: Error?) -> Error? {
        return error
    }
}

class ResponseCodableTests: XCTestCase {

    let expectation = XCTestExpectation(description: "Download https://jsonplaceholder.typicode.com/posts/1")
    var errorParser: ErrorParserStub!

    override func setUp() {
        super.setUp()
        errorParser = ErrorParserStub()
    }

    override func tearDown() {
        super.tearDown()
        errorParser = nil
    }

    func testShouldDownloadAndParse() {
       AF
            .request("https://jsonplaceholder.typicode.com/posts/1")
            .responseCodable(errorParser: errorParser) { [weak self] (response: DataResponse<PostStub, AFError>) in
                switch response.result {
                case .success: break
                case .failure:
                    XCTFail()
                }
                self?.expectation.fulfill()
            }
        wait(for: [expectation], timeout: 10.0)
    }
}
