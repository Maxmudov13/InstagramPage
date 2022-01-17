//
//  PostView.swift
//  InstagramPage
//
//  Created by user on 17/01/22.
//

import SwiftUI

struct PostView: View {
    // Follow Button
    @State var follows_bool = true
    @State var follows: String = "follow"
    
    // Like Button
    @State var like_bool = true
    @State var like: String = "heart"
    
    var imgName = "image1"
    var imgName2 = "image4"
    
    
    
    var body: some View {
        VStack(alignment: .leading){
            // Header
            HStack{
                Image("image0")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .cornerRadius(50)
                
                // Profile Name
                Text("iMtRo")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                
                
                // Follow Botton
                Button{
                    self.follows_bool.toggle()

                    if follows_bool {
                        follows = "follow"
                    }else{
                        follows = "following"
                    }
                }label: {
                    Text(follows)
                        .fontWeight(.bold)
                        .foregroundColor(Color.blue)
                }
                
                Spacer()

                Button{
                    
                }label: {
                    Image(systemName: "ellipsis")
                        .padding()
                        .font(.system(size: 25))
                        .foregroundColor(Color.black)
                }
            }
            
            HStack(alignment: .center,spacing: 10){
                Image(imgName)
                    .resizable()
                    .scaledToFit()
                    .padding(.leading,-20)
                    .padding(.trailing,-20)

                Spacer()
                
                Image(imgName2)
                    .resizable()
                    .scaledToFit()
                    .padding(.leading,-20)
                    .padding(.trailing,-20)
            }
            
            // Horizontal Bar
            HStack(alignment: .center){
                
                //Like Button
                Button{
                    self.like_bool.toggle()
                    if like_bool {
                        like = "heart"
                    }else{
                        like = "heart.fill"
                    }
                }label: {
                    if like_bool {
                        Image(systemName: like)
                            .font(.system(size: 25))
                            .foregroundColor(Color.black)
                    }else{
                        Image(systemName: like)
                            .font(.system(size: 25))
                            .foregroundColor(Color.red)
                    }
                }
                // Comment Button
                Button{
                    
                }label: {
                    Image(systemName: "text.bubble.fill")
                        .font(.system(size: 25))
                        .foregroundColor(Color.black)
                }
                
                // Share Button
                Button{
                    
                }label: {
                    Image(systemName: "paperplane.fill")
                        .font(.system(size: 25))
                        .foregroundColor(Color.black)
                }
                
                Spacer()
                
                // Save Button
                Button{
                    
                }label: {
                    Image(systemName: "bookmark.fill")
                        .font(.system(size: 25))
                        .foregroundColor(Color.black)
                }
            }
            .padding(.leading,5)
            .padding(.bottom,5)
            
            //  Description
            Text("Liked by Furqat and 9999 others")
                .font(Font.system(size: 18))
                .padding(.leading,5)
                .padding(.top,0)
            Text("View all 10000 comments")
                .font(Font.system(size: 15))
                .foregroundColor(Color.gray.opacity(10))
                .padding(.leading,15)
                .padding(.top,0)
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
    }
}
