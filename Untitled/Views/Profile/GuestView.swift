//
//  GuestView.swift
//  Untitled2.0
//
//  Created by Joël Lacoste-Therrien on 2024-03-08.
//

import SwiftUI

struct GuestView: View {
    
    @EnvironmentObject var model:ContentModel
    var body: some View {
        VStack{
            TopGeneral(title: "Guest")
            VStack{
                ScrollView{
                    
                    ForEach(model.allEvents, id: \.id) { event in
                        
                        
                    }
                    
                }
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    GuestView()
}
