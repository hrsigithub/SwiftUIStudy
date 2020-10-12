//
//  RestaurantView.swift
//  SwiftUIStudy
//
//  Created by Hiroshi.Nakai on 2020/10/12.
//

import SwiftUI

// ListView セルデザイン

struct RestaurantView: View {
    
    var title: String
    var type: String
    var note: String
    
    var body: some View {
        HStack() { // 行ね
            VStack() {
                HStack(spacing:0) {
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                    Image(systemName: "star")
                    Image(systemName: "star")
                }.foregroundColor(.yellow)
                Text(type)
            }
            VStack() {
                Text(title).font(.largeTitle)
                Text(note).font(.subheadline)
                
            }
        }

    }
}

struct RestaurantView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantView(
            title: "jun",
            type: "タイプ",
            note: "うんこ"
        )
    }
}
