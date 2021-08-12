//
//  Api.swift
//  DI.fm App
//
//  Created by Milen Pivchev on 8/11/21.
//

import Foundation
import Alamofire

class Api {
    private static let audioAddictHost = "https://api.audioaddict.com"
    private static let listenHost = "https://listen.di.fm"

    static func logIn(completion: @escaping (User) -> Void) {
        let params = [
            "username": ProcessInfo.processInfo.environment["username"],
            "password": ProcessInfo.processInfo.environment["password"]
        ]

        let request = AF.request("\(audioAddictHost)/v1/di/members/authenticate", method: .post, parameters: params).validate()

        print(request)

        request.responseDecodable(of: User.self, decoder: JSONDecoder.default) { response in
            print(response)

        }

//        request.responseDecodable(of: )
    }

    static func fetchChannels(completion: @escaping ([Channel]) -> Void) {
        let request = AF.request("\(listenHost)/premium_high").validate()

        request.responseDecodable(of: [Channel].self, decoder: JSONDecoder.default) { response in
            guard let channels = response.value else { return }
            completion(channels)
        }
    }
}
