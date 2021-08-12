//
//  JSONDecoderExtensions.swift
//  DI.fm App
//
//  Created by Milen Pivchev on 8/12/21.
//

import Foundation

extension JSONDecoder {
    static let `default`: JSONDecoder = {
        let jsonDecoder = JSONDecoder()
        jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase
        return jsonDecoder
    }()
}
