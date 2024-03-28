//
//  FAQ.swift
//  Untitled2.0
//
//  Created by Joël Lacoste-Therrien on 2024-03-08.
//

import SwiftUI

struct FAQ: View {
    
    var customColor1 = Color(
        red: Double(132) / 255.0,
        green: Double(4) / 255.0,
        blue: Double(254) / 255.0,
        opacity: Double(255) / 255.0
    )
    var body: some View {
        
        
        VStack{
            TopGeneral(title: "Q & A")
            
            ScrollView{
                
                
                Text("Why is my dick on fire?")
                    .foregroundColor(customColor1)
                    .multilineTextAlignment(.center)
                    .font(.custom("AvenirNext-Bold", size: 30))
                
                Text("Cuz you stick it in gasoline, dumbasss.")
                    .multilineTextAlignment(.center)
                    .font(.custom("AvenirNext", size: 20))
                    .padding(.vertical,3)
                
                Divider()
                    .padding(.top, 10)
                
                Text("Why is my dick on fire?")
                    .foregroundColor(customColor1)
                    .multilineTextAlignment(.center)
                    .font(.custom("AvenirNext-Bold", size: 30))
                
                Text("Cuz you stick it in gasoline, dumbasss.")
                    .multilineTextAlignment(.center)
                    .font(.custom("AvenirNext", size: 20))
                    .padding(.vertical,3)
                
                Divider()
                    .padding(.top, 10)
                
                Text("Why is my dick on fire?")
                    .foregroundColor(customColor1)
                    .multilineTextAlignment(.center)
                    .font(.custom("AvenirNext-Bold", size: 30))
                
                Text("Cuz you stick it in gasoline, dumbasss.")
                    .multilineTextAlignment(.center)
                    .font(.custom("AvenirNext", size: 20))
                    .padding(.vertical,3)
                
                Divider()
                    .padding(.top, 10)
                
                Text("Why is my dick on fire?")
                    .foregroundColor(customColor1)
                    .multilineTextAlignment(.center)
                    .font(.custom("AvenirNext-Bold", size: 30))
                
                Text("Cuz you stick it in gasoline, dumbasss.")
                    .multilineTextAlignment(.center)
                    .font(.custom("AvenirNext", size: 20))
                    .padding(.vertical,3)
                
                Divider()
                    .padding(.top, 10)
                
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    FAQ()
}
