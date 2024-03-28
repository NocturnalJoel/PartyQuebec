//
//  CustomField.swift
//  Untitled2.0
//
//  Created by Joël Lacoste-Therrien on 2024-03-10.
//

import SwiftUI

struct CustomField: View {
    
    var question:String
    
    @Binding var answer:String
    
    var customColor1 = Color(
        red: Double(132) / 255.0,
        green: Double(4) / 255.0,
        blue: Double(254) / 255.0,
        opacity: Double(255) / 255.0
    )
    
    var body: some View {
        
        VStack{
            
            Text("\(question):")
                .foregroundColor(customColor1)
                .font(.custom("AvenirNext-Bold", size: 35))
            
            TextField("", text: $answer)
                .font(.custom("AvenirNext", size: 25))
                .multilineTextAlignment(.center)
            
            Divider()
            
        }
    }
}

#Preview {
    CustomField(question: "NAME OF THE EVENT", answer: Binding.constant("Constant Value"))
}
