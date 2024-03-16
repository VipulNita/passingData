//
//  ContentView.swift
//  passingData
//
//  Created by vipul kumar on 17/03/24.
//

import SwiftUI



struct ContentView: View {
   @State var text2 :String = ""

    var body: some View {
        NavigationStack{
            VStack {
                Image(systemName: "folder.fill")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                TextField("Input Text", text: $text2)
                    .border(.secondary)
                    .padding()
                    .buttonStyle(.bordered)
                NavigationLink(destination: page2View(text3: $text2)){
                    Label("Go to page 2",systemImage: "rectangle.portrait.and.arrow.right")
                        .font(.headline)
                        .foregroundColor(.purple)
                }
//                Button(action:actionButtonClick) {
//                    Text("Go to page2")
//                }
            }
            .padding()
        }
    }
}
//func actionButtonClick(){
//    page2View(text3: $text2)
//    
//}

#Preview {
    ContentView()
}
