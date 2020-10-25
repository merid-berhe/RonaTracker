//
//  TotalDataView.swift
//  RonaTracker
//
//  Created by Merid Berhe on 19.10.20.
//

import SwiftUI

struct TotalDataView: View {
    
    var totalData: TotalData
    
    var body: some View {
        
        VStack {
            
            HStack {
                
                TotalDataCard(number: totalData.confirmed.formatNumber(), name: "Confirmed", color: .white).background(Color.red)
                TotalDataCard(number: totalData.critical.formatNumber(), name: "Critical", color: .white).background(Color.yellow)
                TotalDataCard(number: totalData.deaths.formatNumber(), name: "Deaths", color: .white).background(Color.red)
                
            }
            
            HStack {
                
                TotalDataCard(number: String(format: "%.2f", totalData.fatalityRate), name: "Death (%)", color: .white).background(Color.red)
                TotalDataCard(number: totalData.recovered.formatNumber(), name: "Recovered", color: .white).background(Color.green)
                TotalDataCard(number: String(format: "%.2f", totalData.recoveredRate), name: "  Recovery (%)    ", color: .white).background(Color.green)
            
            }
            
        } //end of VStack
            
            .frame(height: 170)
            .padding(10)
        
    }
}

struct TotalDataView_Previews: PreviewProvider {
    static var previews: some View {
        TotalDataView(totalData: testTotalData)
    }
}
