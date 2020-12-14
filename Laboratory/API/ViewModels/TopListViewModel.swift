//
//  TopListViewModel.swift
//  SwiftUIStudy
//
//  Created by Hiroshi.Nakai on 2020/12/14.
//

import Foundation


class TopListViewModel: ObservableObject {
    
    let fetcher = StudyGroupEventFetcher()
 
    @Published var eventData: [Event] = []

    init() {
        self.fetcher.fetchEventDataAF { (events) in
            self.eventData = events
        }
    }
}
