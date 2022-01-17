//
//  HomeView.swift
//  InstagramPage
//
//  Created by user on 17/01/22.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var status: Status
    
    @State var pageBool = false
    
    var body: some View {
        NavigationView{
            List{
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        AddStores()
                        Stores()
                        Stores()
                        Stores()
                        Stores()
                    }
                }.frame(height: 100)
                
                PostView(imgName: "image1", imgName2: "image4")
                PostView(imgName: "image3", imgName2: "image4")
                PostView(imgName: "image1", imgName2: "image3")
                PostView(imgName: "image4", imgName2: "image1")
            }
            .listStyle(PlainListStyle())
            .navigationBarItems(leading: Image(systemName: "camera.fill"),
                                trailing: Button{
                    pageBool = true
                }label: {
                    Image(systemName: "person.fill")
                }.sheet(isPresented: $pageBool, content: {
                    SettingView()
                })
            )
            .foregroundColor(Color.black)
            .navigationBarTitle(Text("Instagram"), displayMode: .inline)
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
