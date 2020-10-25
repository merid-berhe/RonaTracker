//
//  CountryDetailView.swift
//  RonaTracker
//
//  Created by Merid Berhe on 19.10.20.
//

import SwiftUI

struct CountryDetailView: View {
    
    @ObservedObject var countryStatisticsRequest = CountryStatisticsFetchRequest()
    
    var countryName: String
    
    var body: some View {
        
        VStack {
                VStack {
                    
                    CountryDetailRow(number: countryStatisticsRequest.detailedCountryData?.confirmedCases.formatNumber() ?? "no data", name: "Confirmed")
                        .padding(.top)
                    
                    CountryDetailRow(number: countryStatisticsRequest.detailedCountryData?.activeCases.formatNumber() ?? "no data", name: "Active Cases")
                    
                    CountryDetailRow(number: "+" + (countryStatisticsRequest.detailedCountryData?.newCases.formatNumber() ?? "no data"), name: "New Cases")
                    
                    CountryDetailRow(number: countryStatisticsRequest.detailedCountryData?.recoveredCases.formatNumber() ?? "no data", name: "Recovered Cases", color: .green)
                    
                    CountryDetailRow(number: countryStatisticsRequest.detailedCountryData?.criticalCases.formatNumber() ?? "no data", name: "Critical Cases", color: .yellow)
                    
                    CountryDetailRow(number: countryStatisticsRequest.detailedCountryData?.deaths.formatNumber() ?? "no data", name: "Deaths", color: .red)
                    
                    CountryDetailRow(number: "+" + (countryStatisticsRequest.detailedCountryData?.newdeaths.formatNumber() ?? "no data"), name: "New Deaths", color: .red)
                    
                    CountryDetailRow(number: countryStatisticsRequest.detailedCountryData?.testsDone.formatNumber() ?? "no data", name: "Tests Done", color: .yellow)
                    
                    CountryDetailRow(number: String(format: "%.2f", countryStatisticsRequest.detailedCountryData?.fatalityRate ?? 0.0) + "%" , name: "Fatality Rate", color: .red)
                    
                    CountryDetailRow(number: String(format: "%.2f", countryStatisticsRequest.detailedCountryData?.recoveredRate ?? 0.0) + "%" , name: "Recovery Rate", color: .green)

                }
                
                .background(Color("cardBackgroundColor"))
                .cornerRadius(8)
                .padding()
            
            Spacer()
        }
        .padding(.top, 25)
        .navigationBarTitle(countryName)
        .onAppear() {
            self.getStatistics()
        }
    
    }
    
    private func getStatistics() {
        countryStatisticsRequest.getStatsFor(country: self.countryName.replacingOccurrences(of: " ", with: "-"))
    }
}

struct CountryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
