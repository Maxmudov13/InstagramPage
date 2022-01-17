//
//  Stores.swift
//  InstagramPage
//
//  Created by user on 17/01/22.
//

import SwiftUI

struct Stores: View {
    var body: some View {
        VStack{
            Button(action: {}, label: {
                Image("image0")
                    .resizable()
                    .frame(width: 75, height: 75)
                    .cornerRadius(100)
                    .overlay(RoundedRectangle(cornerRadius: 100).stroke(Color.red, lineWidth: 3))
            })
            Text("iMtRo")
                .font(Font.system(size: 14))
        }
        .padding(.trailing,10)
        .frame(height: 100)
    }
}

struct Stores_Previews: PreviewProvider {
    static var previews: some View {
        Stores()
    }
}
