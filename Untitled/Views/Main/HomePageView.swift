//
//  ContentView.swift
//  Untitled2.0
//
//  Created by Joël Lacoste-Therrien on 2024-03-08.
//

import SwiftUI

struct HomePageView: View {
    
    @EnvironmentObject var model:ContentModel
    
    var body: some View {
        
        
        
        NavigationView {
            VStack {
                TopMain()
                TabView{
                    ForEach(model.allEvents, id: \.id) { event in
                        
                        CardView(event: event)
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                
                
            }
            .ignoresSafeArea()
        }
        .onAppear {
            model.fetchEvents()
        }
    }
}

#Preview {
    HomePageView()
}
