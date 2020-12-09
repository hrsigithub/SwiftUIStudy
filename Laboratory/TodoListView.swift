//
//  TodoListView.swift
//  SwiftUIStudy
//
//  Created by Hiroshi.Nakai on 2020/12/09.
//

import SwiftUI

struct TodoListView: View {
    
    @State private var newItem: String = ""
    @State private var toDoList: [String] = ["買物", "洗濯"]
    
    var body: some View {
        VStack {
            
            HStack {
                Text("新しい予定の追加").font(.largeTitle).padding(.leading)
                Spacer()
            }
            
            HStack {
                TextField("新しい予定を入力してください。", text: $newItem)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 250)
                
                Button(action: {
                    // ボタン押下
                    self.toDoList.append(self.newItem)
                    self.newItem = ""
                    
                }) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 5)
                            .frame(width: 50, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Text("追加").foregroundColor(.white)
                    }
                }
            }

            HStack {
                Text("To Do List").font(.largeTitle).padding(.leading)
                Spacer()
            }


            List(toDoList, id: \.self) { item in
                Text(item)
            }
            
            Spacer()
        }
    }
}

struct TodoListView_Previews: PreviewProvider {
    static var previews: some View {
        TodoListView()
    }
}
