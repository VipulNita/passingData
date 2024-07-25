//
//  page2View.swift
//  passingData
//
//  Created by vipul kumar on 17/03/24.
//

import Foundation
import SwiftUI

struct page2View: View {
   @Binding var text3 :String
   
    var body: some View {
        VStack {
            Image(systemName: "folder.fill")
                .imageScale(.large)
                .foregroundStyle(.tint)
                .scaledToFit()
            AsyncImage(url: URL(string: text3)) { image in
                image.resizable()
                    .scaledToFit()
                    .frame(width: 600, height: 300)
            } placeholder: {
                ProgressView()
            }
            Text("Recieved from page 1 \(text3)")
        }
        .padding()
//            .aspectRatio(contentMode: isImageBig ? .fit : .fill )
//
//            //                    .frame(width: 600, height: 300)
//
//                                .onTapGesture {

//                                    isImageBig = true

                                }
//            .frame(width: 100, height: 100)
        }
//        .padding()

func getDataFromServer() async throws {
    let url = URL(string:" ")!
    guard let url = URL(string: <#T##String#>) else{
        throw URLError(.badURL)
    }
    
    let (data,response) = try await URLSession.shared.data(from: url)
//    used paranthesis because we use tuple-> two data types in one type-> 2 (integer,string)
    guard
    let response = response as? HTTPURLResponse,
    response.statusCode >= 200 && response.statusCode < 300
    else{
        throw URLError(.unknown)
    }
}



#Preview {
   page2View(text3: .constant("Hello"))
}

