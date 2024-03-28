//
//  CardView.swift
//  Untitled
//
//  Created by Joël Lacoste-Therrien on 2024-03-28.
//
//
//  Card.swift
//  Untitled2.0
//
//  Created by Joël Lacoste-Therrien on 2024-03-08.
//

import SwiftUI
import Firebase

struct CardView: View {
    
    @EnvironmentObject var model: ContentModel
    
    @State var showingReservationSheet = false
    
   
    
    var event: Event
    
    var customColor1 = Color(
        red: Double(132) / 255.0,
        green: Double(4) / 255.0,
        blue: Double(254) / 255.0,
        opacity: Double(255) / 255.0
    )
    var body: some View {
        
        
        ZStack{
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(.black)
                .padding()
                .frame(height: 670)
            
            VStack (spacing: 15){
                Text(event.nameOfEvent)
                    .foregroundColor(.white)
                    .font(.custom("AvenirNext-Bold", size: 40))
                
                
                Text(extractCity(from: event.eventLocation))
                    .foregroundColor(.white)
                    .font(.custom("AvenirNext", size: 20))
                
                Text(event.dateOfEvent.toFormattedString())
                    .foregroundColor(.white)
                    .font(.custom("AvenirNext", size: 20))
                
                Divider()
                
                Text("HOSTED BY \(event.hostName)")
                    .foregroundColor(.white)
                    .font(.custom("AvenirNext", size: 20))
                
                Text("RATING: \(event.hostRating)")
                    .foregroundColor(.white)
                    .font(.custom("AvenirNext", size: 20))
                
                
                Divider()
                
                
                
                Text("Up to \(event.maxAttendance) people")
                    .foregroundColor(.white)
                    .font(.custom("AvenirNext", size: 20))
                
                Text("\(event.costOfEntry)$/ticket")
                    .foregroundColor(.white)
                    .font(.custom("AvenirNext", size: 20))
                Text("\(event.coinPrice)$/coin")
                    .foregroundColor(.white)
                    .font(.custom("AvenirNext", size: 20))
                
                Divider()
                
                Text(event.eventDescription)
                    .foregroundColor(.white)
                
                    .font(.custom("AvenirNext", size: 20))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 45)
                
                Divider()
                
            
                
                Button(action: {
                    
                    showingReservationSheet = true
                    
                }, label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .foregroundColor(.white)
                            .frame(width: 300, height: 70)
                        
                        
                        Text("Buy Your Ticket")
                            .foregroundColor(customColor1)
                            .font(.custom("AvenirNext-Bold", size: 35))
                            
                    }
                })
                .sheet(isPresented: $showingReservationSheet) {
                    ReservationView(event: event)
                }
                
                
                
                
                
            }
            
            
        }
    }
}

private func extractCity(from address: String) -> String {
    let components = address.components(separatedBy: ",")
    // Assuming the city is always the second component of the address
    // Adjust the index if necessary
    return components.count > 1 ? components[1].trimmingCharacters(in: .whitespaces) : ""
}

extension Timestamp {
    func toFormattedString() -> String {
        let date = self.dateValue() // Convert Timestamp to Date
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM d" // Placeholder, adjust below
        formatter.amSymbol = "am"
        formatter.pmSymbol = "pm"
        
        // Special handling for 'st', 'nd', 'rd', 'th'
        let dayOfMonth = Calendar.current.component(.day, from: date)
        formatter.dateFormat = "MMMM d'\(daySuffix(from: dayOfMonth))', yyyy, h:mm a"
        
        return formatter.string(from: date)
    }
    
    private func daySuffix(from day: Int) -> String {
        switch day {
        case 1, 21, 31: return "st"
        case 2, 22: return "nd"
        case 3, 23: return "rd"
        default: return "th"
        }
    }
}
