//
//  HostView.swift
//  Untitled2.0
//
//  Created by Joël Lacoste-Therrien on 2024-03-08.
//

import SwiftUI

struct HostView: View {
    
    var customColor1 = Color(
        red: Double(132) / 255.0,
        green: Double(4) / 255.0,
        blue: Double(254) / 255.0,
        opacity: Double(255) / 255.0
    )
    
    var body: some View {
        
        NavigationView{
        VStack{
            TopGeneral(title: "Host")
            
            VStack{
                ScrollView{
                    
                }
                
                NavigationLink {
                    EventCreationView()
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .foregroundColor(customColor1)
                            .padding()
                            .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        
                        
                        Text("CREATE AN EVENT")
                            .foregroundColor(.black)
                            .bold()
                            .font(.custom("AvenirNext-Bold", size: 30))
                    }
                    .offset(y:-15)
                }

                
                
                
                
                
            }
        }
        .ignoresSafeArea()
        
    }
    }
}

#Preview {
    HostView()
}
