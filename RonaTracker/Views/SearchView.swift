//
//  SearchView.swift
//  RonaTracker
//
//  Created by Merid Berhe on 19.10.20.
//

import SwiftUI

struct SearchView: View {
    
    @Binding var searchText: String
    
    
    var body: some View {
        
        HStack {
            
            TextField("Country...", text: $searchText)
                .padding()
        }
        
        .frame(height: 50)
        .background(Color("cardBackgroundColor"))
    }
}
