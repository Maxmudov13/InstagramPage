//
//  SettingView.swift
//  InstagramPage
//
//  Created by user on 17/01/22.
//

import SwiftUI

struct SettingView: View {
    @EnvironmentObject var status: Status
    var body: some View {
        VStack{
            Button{
                
                UserDefaults.standard.removeObject(forKey: "userid")
                status.listen()
                
                
            } label: {
                Text("Log Out")
                    .foregroundColor(Color .red)
                    .fontWeight(.bold)
                    .padding()
                    .background(.black)
            }
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
