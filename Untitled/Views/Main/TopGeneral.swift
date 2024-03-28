//
//  TopGeneral.swift
//  Untitled2.0
//
//  Created by Joël Lacoste-Therrien on 2024-03-08.
//

import SwiftUI

struct TopGeneral: View {
    var customColor1 = Color(
        red: Double(132) / 255.0,
        green: Double(4) / 255.0,
        blue: Double(254) / 255.0,
        opacity: Double(255) / 255.0
    )
    
    var title:String
    
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(customColor1)
                .frame(width: 400, height: 150)
            
            Text(title)
                .foregroundColor(.black)
                .bold()
                .font(.custom("AvenirNext-Bold", size: 50))
        }
    }
}

#Preview {
    TopGeneral(title: "Penis")
}
