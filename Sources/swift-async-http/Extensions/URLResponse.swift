//
// URLResponse.swift
// swift-async-http
//

import Foundation

public extension URLResponse {
    var statusCode: HTTPStatusCode {
        do {
            guard let httpURLResponse = self as? HTTPURLResponse,
                  let httpStatusCode = HTTPStatusCode(rawValue: httpURLResponse.statusCode)
            else { throw HTTPError.invalidResponse }
            return httpStatusCode
        } catch {
            return .badRequest
        }
    }
}
