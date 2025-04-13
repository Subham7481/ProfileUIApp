//
//  ContentView.swift
//  ProfileApp
//
//  Created by Subham Patel on 11/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .center){
                VStack(alignment: .center, spacing: 20){
                    Image("myImage")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180, alignment: .top)
                        .clipShape(Circle())
                        .shadow(color: .pink, radius: 5, x: 5, y: 5)
                    
                    Text("Your name")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .font(.system(.largeTitle))
                        .shadow(radius: 5)
                    
                    Text("iOS | Front End Developer")
                        .foregroundColor(Color.white)
                        .font(.body)
                    
                    HStack(spacing: 40){
                        Image(systemName: "heart.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        Image(systemName: "network")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        Image(systemName: "message.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        Image(systemName: "phone.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                    .foregroundColor(Color.white)
                    .frame(width: 250, height: 50, alignment: .center)
                    .shadow(color: .pink, radius: 5, y: 8)
                }
                Spacer()
                VStack(alignment: .center, spacing: 30){
                    RoundedRectangle(cornerRadius: 120)
                        .frame(width: 200, height: 50, alignment: .center)
                        .foregroundColor(Color.white)
                        .shadow(color: .pink, radius: 8, y: 8)
                        .overlay(
                            Text("Follow")
                                .fontWeight(.bold)
                                .foregroundColor(.pink)
                                .font(.system(size: 30))
                        )
                    
                    HStack(alignment: .center, spacing: 60){
                        VStack{
                            Text("2220")
                                .font(.title)
                                .foregroundColor(Color.pink)
                            
                            Text("Appreciations")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        
                        VStack{
                            Text("2220")
                                .font(.title)
                                .foregroundColor(Color.pink)
                            
                            Text("Appreciations")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        
                        VStack{
                            Text("2220")
                                .font(.title)
                                .foregroundColor(Color.pink)
                            
                            Text("Appreciations")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                    }
                    Text("About Us")
                        .font(.system(size: 40))
                        .font(.system(.caption))
                        
                    Text("I'm am iOS front-end developer. Welcome to the app.")
                        .padding()
                        .font(.system(.body))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.leading)
                        .lineLimit(2)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
