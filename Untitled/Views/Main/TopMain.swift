//
//  Top.swift
//  Untitled2.0
//
//  Created by Joël Lacoste-Therrien on 2024-03-08.
//

import SwiftUI

struct TopMain: View {
    
    var customColor1 = Color(
        red: Double(132) / 255.0,
        green: Double(4) / 255.0,
        blue: Double(254) / 255.0,
        opacity: Double(255) / 255.0
    )
    
    var body: some View {
        
        
            ZStack{
                Rectangle()
                    .foregroundColor(customColor1)
                    .frame(width: 400, height: 150)
                
                HStack{
                    
                    NavigationLink(destination: GuestView()) {
                        ZStack {
                           
                           Circle()
                               .foregroundColor(.white)
                           .frame(width: 75)
                           
                           Image(systemName: "ticket")
                               .font(.system(size: 40))
                               .foregroundColor(.black)
                        }.offset(x: -30)
                        }
                    
                     
                    Spacer()
                    
                    VStack(spacing: 0) {
                        Text("VV")
                            .foregroundColor(.black)
                            .bold()
                            .font(.custom("AvenirNext-Bold", size: 40))
                            .padding(.horizontal)
                        
                        NavigationLink(destination: FAQ()) {
                        ZStack {
                            
                                Circle()
                                    .foregroundColor(.white)
                                    .frame(width: 70, height: 40)
                            
                            
                            Text("?")
                                .bold()
                                .foregroundColor(.black)
                        }
                    }
                    }
                    
                    Spacer()
                    
                    
                    NavigationLink(destination: HostView()) {
                        ZStack {
                            Circle()
                                .foregroundColor(.white)
                            .frame(width: 75)
                            
                            
                            Image(systemName: "house")
                                .font(.system(size: 40))
                                .foregroundColor(.black)
                        }
                        .offset(x: 30)
                        }
                    
                }
                .frame(width: 300)
                .offset(y: 10)
            }
        
    }
}

#Preview {
    TopMain()
}
