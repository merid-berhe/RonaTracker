//
//  CountryDetailView.swift
//  RonaTracker
//
//  Created by Merid Berhe on 19.10.20.
//

import SwiftUI

struct CountryDetailView: View {
    
    var countryData: CountryData
    
    var body: some View {
        
        VStack {
                VStack {
                    
                    CountryDetailRow(number: countryData.confirmed.formatNumber(), name: "Confirmed")
                        .padding(.top)
                    CountryDetailRow(number: countryData.critical.formatNumber(), name: "Critical", color: .yellow)
                    CountryDetailRow(number: countryData.deaths.formatNumber(), name: "Deaths", color: .red)
                    CountryDetailRow(number: String(format: "%.2f", countryData.fatalityRate), name: "Death %", color: .yellow)
                    CountryDetailRow(number: countryData.recovered.formatNumber(), name: "Critical", color: .green)
                    CountryDetailRow(number: String(format: "%.2f", countryData.recoveredRate), name: "Critical", color: .green)
                    
                }
                
                .background(Color("cardBackgroundColor"))
                .cornerRadius(8)
                .padding()
            
            Spacer()
        }
        .padding(.top, 50)
        .navigationBarTitle(countryData.country)
    }
}

struct CountryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetailView(countryData: testCountryData)
    }
}
