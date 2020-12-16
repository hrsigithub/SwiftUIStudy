//
//  AFRequest.swift
//  SwiftUIStudy
//
//  Created by Hiroshi.Nakai on 2020/12/16.
//

import Foundation
import Alamofire


class AFRequest {

    //    private let baseUrl = "https://connpass.com/api/v1/event/"
        private let baseUrl = "https://connpass.com/api/v1/event/?keyword=YUMEMI.swift"

    
    static var shared = AFRequest()

    func request<T: Decodable>(type: T.Type, completion: @escaping (T) -> Void) {

        AF.request(baseUrl, method: .get)
            .responseJSON { response in
                do {
                    guard let data = response.data else { return }
                    let value = try JSONDecoder().decode(T.self, from: data)

                    completion(value)
                    
                } catch {
                    print("json convert failed in JSONDecoder. " + error.localizedDescription)
                }
                
            }

    }
    
    
    
    func test() -> Int {
        50
        
    }
    
}
