//
//  Channel.swift
//  DI.fm App
//
//  Created by Milen Pivchev on 8/11/21.
//

import Foundation

struct Channel: Decodable {
    let id: Int
    let key: String
    let name: String
    let playlist: String
}
