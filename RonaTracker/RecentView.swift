//
//  RecentView.swift
//  RonaTracker
//
//  Created by Merid Berhe on 18.10.20.
//

import SwiftUI

struct RecentView: View {
    
    @ObservedObject var covidFetch = CovidFetchRequest()
    @ObservedObject var test = CountryStatisticsFetchRequest()
    
    
    @State var searchText = ""
    @State var isSearchVisible = false
    
    init() {
        UINavigationBar.appearance().backgroundColor = .clear
        }
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                if isSearchVisible {
                    SearchView(searchText: $searchText)
                }
                
                TotalDataView(totalData: covidFetch.totalData)
                ListHeaderview()
                
                List {
                    
                    ForEach(covidFetch.allCountries.filter {
                        self.searchText.isEmpty ? true : $0.country.lowercased().contains(self.searchText.lowercased())
                    }, id: \.country) { countryData in
                        
                        NavigationLink(destination: CountryDetailView(countryName: countryData.country)) {
                            
                            CountryDataRowView(countryData: countryData)
                                .listStyle(PlainListStyle())
                        }
                        
                    }
                }
                
            }//End of VStack
            .navigationBarTitle("Global Covid Cases", displayMode: .inline)
            .listStyle(GroupedListStyle())
            .navigationBarItems(trailing:
                    
                    Button(action: {
                        
                        self.isSearchVisible.toggle()
                        
                        if !self.isSearchVisible {
                            self.searchText = ""
                        }
                        
                    }, label: {
                        Image(systemName: "magnifyingglass")
                    })
            )
            
        }  //End of Navigation view
        
    }
}

struct RecentView_Previews: PreviewProvider {
    static var previews: some View {
        RecentView()
    }
}
