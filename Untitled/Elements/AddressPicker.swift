//
//  AddressPicker.swift
//  Untitled
//
//  Created by Joël Lacoste-Therrien on 2023-11-11.
//

import SwiftUI
import CoreLocation

struct AddressPicker: View {
    @Binding var isPresented: Bool
    @Binding var eventLocation: String
    @Binding var coordinates: CLLocationCoordinate2D?

    @State private var street = ""
    @State private var city = ""
    @State private var zipCode = ""
    @State private var country = ""
    @State private var errorMessage = ""

    var body: some View {
        NavigationView {
            Form {
                CustomField(question: "Street", answer: $street)
                CustomField(question: "City", answer: $city)
                CustomField(question: "Zip Code", answer: $zipCode)
                CustomField(question: "Country", answer: $country)

                Button("Confirm") {
                    convertAddressToCoordinates()
                }
                .disabled(street.isEmpty || city.isEmpty || zipCode.isEmpty || country.isEmpty)
                .buttonStyle(.plain)

                if !errorMessage.isEmpty {
                    Text(errorMessage)
                        .foregroundColor(.red)
                }
            }
            .navigationTitle("Enter Address")
            .navigationBarItems(leading: Button("Cancel") {
                isPresented = false
            })
        }
    }

    private func convertAddressToCoordinates() {
        let geocoder = CLGeocoder()
        let addressString = "\(street), \(city), \(zipCode), \(country)"

        geocoder.geocodeAddressString(addressString) { (placemarks, error) in
            if let error = error {
                self.errorMessage = "Invalid address: \(error.localizedDescription)"
            } else if let placemarks = placemarks, let location = placemarks.first?.location {
                self.coordinates = location.coordinate
                self.eventLocation = addressString
                self.isPresented = false
            } else {
                self.errorMessage = "Address not found."
            }
        }
    }

}
