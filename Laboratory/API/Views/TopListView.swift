//
//  TopListView.swift
//  SwiftUIStudy
//
//  Created by Hiroshi.Nakai on 2020/12/14.
//

import SwiftUI

struct TopListView: View {
    
    //let eventsData: [Event] = mockEventsData
    //@ObservedObject var fetcher = StudyGroupEventFetcher()
    @ObservedObject var topListVM = TopListViewModel()
    
    
    var body: some View {
        NavigationView {
            List(topListVM.eventData) { event in
                NavigationLink(destination: Text("詳細")) {
                    EventRowView(eventData: event)
                }
            }
            .navigationBarTitle(Text("YUMEMI.swift一覧"))
        }
    }
}

struct TopListView_Previews: PreviewProvider {
    static var previews: some View {
        TopListView()
    }
}
