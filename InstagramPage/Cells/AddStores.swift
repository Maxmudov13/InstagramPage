//
//  AddStores.swift
//  InstagramPage
//
//  Created by user on 17/01/22.
//

import SwiftUI

struct AddStores: View {
    var body: some View {
        VStack{
            ZStack(alignment: .bottomTrailing){
                Button(action: {}, label: {
                    Image("image0")
                        .resizable()
                        .frame(width: 75, height: 75)
                        .cornerRadius(100)
                })
                
                Image("addIMG")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .cornerRadius(100)
            }
            Text("iMtRo")
                .font(Font.system(size: 14))
        }
        .padding(.trailing,10)
        .frame(height: 100)
    }
}

struct AddStores_Previews: PreviewProvider {
    static var previews: some View {
        AddStores()
    }
}
