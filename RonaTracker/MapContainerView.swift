//
//  MapContainerView.swift
//  RonaTracker
//
//  Created by Merid Berhe on 19.10.20.
//

import SwiftUI

struct MapContainerView: View {
    
    @ObservedObject var covidFetch = CovidFetchRequest()
    
    var body: some View {
        
        MapView(countryData: $covidFetch.allCountries)

    }
}

struct MapContainerView_Previews: PreviewProvider {
    static var previews: some View {
        MapContainerView()
    }
}
