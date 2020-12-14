//
//  SwiftUIView.swift
//  iAnotherSKY
//
//  Created by Hiroshi.Nakai on 2020/12/13.
//

// @Binding  テスト

import SwiftUI

struct SwiftUIView: View {

    @State private var isPushed: Bool = false
    
    var body: some View {
        VStack {
            Text(self.isPushed ? "子Viewから押されたで" : "子Viewから解除されたで")
                .font(.largeTitle)

            ButtonView(isPushedA: $isPushed)
        }

    }
}

struct ButtonView: View {

//    @State var isPushedA: Bool
    @Binding var isPushedA: Bool

    var body: some View {
        
        Button (action: {
            self.isPushedA.toggle()
        }) {
            Text(self.isPushedA ? "押しとるで" : "かいじょされたで")
                .font(.largeTitle)
        }
    }
}




struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
