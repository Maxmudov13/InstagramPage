//
//  StartCenter.swift
//  InstagramPage
//
//  Created by user on 17/01/22.
//

import SwiftUI

struct StartCenter: View {
    @EnvironmentObject var status: Status
    
    var body: some View {
        VStack{
            if self.status.userid != nil {
                HomeView()
            }else{
                SignIn()
            }
        }
        .onAppear {
            
            status.listen()
        }
    }
}

struct StartCenter_Previews: PreviewProvider {
    static var previews: some View {
        StartCenter()
    }
}
