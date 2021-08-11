//
//  Api.swift
//  DI.fm App
//
//  Created by Milen Pivchev on 8/11/21.
//

import Foundation
import Alamofire

class Api {
    private static let listenHost = "https://listen.di.fm"

    static func fetchChannels(completion: @escaping ([Channel]) -> Void) {
        let request = AF.request("\(listenHost)/premium_high", method: .get).validate()

        request.responseDecodable(of: [Channel].self) { response in
            guard let channels = response.value else { return }
            completion(channels)
        }
    }
}
