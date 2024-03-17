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
    @State var isImageBig : Bool = false
    var body: some View {
        VStack {
            Image(systemName: "folder.fill")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Recieved from page 1 \(text3)")
            AsyncImage(url: URL(string: text3)) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .aspectRatio(contentMode: isImageBig ? .fit : .fill )

            //                    .frame(width: 600, height: 300)

                                .onTapGesture {

                                    isImageBig = true

                                }
//            .frame(width: 100, height: 100)
        }
        .padding()
    }
}


#Preview {
   page2View(text3: .constant("Hello"))
}

