//
//  EventCreationView.swift
//  Untitled2.0
//
//  Created by Joël Lacoste-Therrien on 2024-03-09.
//

import SwiftUI
import MapKit

struct EventCreationView: View {
    
    @EnvironmentObject var model:ContentModel
    
    @State var nameOfEvent = ""
    
    @State var description = ""
    
    @State var maxAttendance = ""
    
    @State var address = ""
    
    @State var coinPrince = ""
    
    @State var costOfEntry = ""
    
    @State var selectedTime = Date()
    
    @State var selectedDate = Date()
    
    @State var showingAddressInput = false
    
    @State var eventLocation = ""
    
    @State var coordinates: CLLocationCoordinate2D?
    
    var customColor1 = Color(
        red: Double(132) / 255.0,
        green: Double(4) / 255.0,
        blue: Double(254) / 255.0,
        opacity: Double(255) / 255.0
    )
  
    
    var body: some View {
        VStack{
            
            TopGeneral(title: "CREATE EVENT")
                
            
            ScrollView {
                
                CustomField(question: "NAME OF THE EVENT", answer: $nameOfEvent)
                
                Text("ADDRESS:")
                    .foregroundColor(model.customColor1)
                    .font(.custom("AvenirNext-Bold", size: 35))
                
                Button {
                    showingAddressInput = true
                } label: {
                    Image(systemName: "mappin.and.ellipse")
                        .foregroundColor(.black)
                }
                .padding(.vertical)

                
                Divider()
                
                CustomField(question: "ENTRY PRICE", answer: $costOfEntry)
                
                CustomField(question: "COIN PRICE", answer: $coinPrince)
                
                CustomField(question: "MAX ATTENDANCE", answer: $maxAttendance)
                
                CustomField(question: "DESCRIPTION", answer: $description)
                
                CustomDatePicker(selectedDate: $selectedDate)
                
                CustomTimePicker(selectedTime: $selectedTime)
                
                
                
                
            }
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(.black)
                        .frame(height: 70)
                    .padding()
                    
                    Text("SUBMIT")
                        .foregroundStyle(customColor1)
                        .bold()
                        .font(.custom("AvenirNext-Bold", size: 50))
                    
                    
                }
                .offset(y: -30)
            })
        }
        .ignoresSafeArea()
        .sheet(isPresented: $showingAddressInput) {
            AddressPicker(isPresented: $showingAddressInput, eventLocation: $eventLocation, coordinates: $coordinates)
        }
    }
}
