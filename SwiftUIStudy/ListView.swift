//
//  ListView.swift
//  SwiftUIStudy
//
//  Created by Hiroshi.Nakai on 2020/10/12.
//

import SwiftUI




// 業に横並びのview
struct ListView: View {
    var body: some View {
 
        List() {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)

            HStack() {
                Text("JUN")
                Spacer()
                Image(systemName: "hand.thumbsup.fill")
                    .foregroundColor(.blue)
                
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
