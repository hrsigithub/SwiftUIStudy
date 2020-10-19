//
//  TextView.swift
//  SwiftUIStudy
//
//  Created by Hiroshi.Nakai on 2020/10/13.
//

import SwiftUI

struct TextView: View {
    
    @State var name = ""

    var body: some View {

        Form {
            TextField("", text: $name)
            Text("\(name)さん")
            
        }
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
