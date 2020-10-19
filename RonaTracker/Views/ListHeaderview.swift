//
//  ListHeaderview.swift
//  RonaTracker
//
//  Created by Merid Berhe on 19.10.20.
//

import SwiftUI

struct ListHeaderview: View {
    var body: some View {
        
        HStack {
            Text("Country")
                .fontWeight(.bold)
                .font(.subheadline)
                .frame(width: 110, alignment: .leading)
                .padding(.leading, 15)
            
            Spacer()
            
            Text("Conf.")
                .fontWeight(.bold)
                .font(.subheadline)
                .frame(height: 40)
                .padding(.leading, 5)
            
            Spacer()
            
            Text("Deaths")
                .fontWeight(.bold)
                .font(.subheadline)
                .frame(height: 40)
                .padding(.leading, 5)
            
            Spacer()
        
            Text("Recover")
                .fontWeight(.bold)
                .font(.subheadline)
                .frame(height: 40)
                .padding(.trailing, 15)
        }
        
        .background(Color("cardBackgroundColor"))
        
       
    }
}

struct ListHeaderview_Previews: PreviewProvider {
    static var previews: some View {
        ListHeaderview()
    }
}
