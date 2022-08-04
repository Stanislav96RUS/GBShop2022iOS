//
//  AbstractErrorParser.swift
//  GBShop2022iOS
//
//  Created by Stanislav on 04.08.2022.
//

import Foundation

protocol AbstractErrorParser {
func parse(_ result: Error) -> Error
func parse(response: HTTPURLResponse?, data: Data?, error: Error?) -> Error?
}
