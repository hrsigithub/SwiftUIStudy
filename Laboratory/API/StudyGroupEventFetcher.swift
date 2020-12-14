//
//  StudyGroupEventFetcher.swift
//  SwiftUIStudy
//
//  Created by Hiroshi.Nakai on 2020/12/14.
//

import Foundation
import Alamofire

class StudyGroupEventFetcher {
    
    private let urlLink = "https://connpass.com/api/v1/event/?keyword=YUMEMI.swift"

//    @Published var eventData: [Event] = []
    
//    init() {
////        fetchEventData()
//        fetchEventDataAF()
//    }
    
    func fetchEventData(completion: @escaping ([Event]) -> Void) {
        URLSession.shared.dataTask(with: URL(string: urlLink)!) { (data, response, error) in
            guard let data = data else { return }
            let decoder: JSONDecoder = JSONDecoder()
            do {
                let searchedResultData = try decoder.decode(StudyGroup.self, from: data)
                DispatchQueue.main.async {
//                    self.eventData = searchedResultData.events.reversed()
                    completion(searchedResultData.events.reversed())
                }
            } catch {
                print("json convert failed in JSONDecoder. " + error.localizedDescription)
            }
        }.resume()
    }
    
    // Alamofire版
    func fetchEventDataAF(completion: @escaping ([Event]) -> Void) {
        AF.request(urlLink)
            .responseJSON { response in
                do {
                    guard let data = response.data else { return }
                    let evData = try JSONDecoder().decode(StudyGroup.self, from: data)
                    //self.eventData = evData.events
                    completion(evData.events)
                    
                } catch {
                    print("json convert failed in JSONDecoder. " + error.localizedDescription)
                }
                
            }
        
    }
}

