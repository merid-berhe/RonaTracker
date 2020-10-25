//
//  ListHeaderview.swift
//  RonaTracker
//
//  Created by Merid Berhe on 19.10.20.
//

import SwiftUI

struct ListHeaderview: View {
    var body: some View {
        
        HStack (spacing: 0) {
            Text("Country")
                .fontWeight(.bold)
                .foregroundColor(.white)
                .font(.subheadline)
                .frame(width: 110, alignment: .leading)
                .padding(.leading, 15)
            
            Spacer()
            
            Text("Conf.")
                .fontWeight(.bold)
                .foregroundColor(.white)
                .font(.subheadline)
                .frame(height: 40)
                .padding(.leading, 5)
            
            Spacer()
            
            Text("Deaths")
                .fontWeight(.bold)
                .foregroundColor(.white)
                .font(.subheadline)
                .frame(height: 40)
                .padding(.leading, 5)
            
            Spacer()
        
            Text("Recoverd")
                .fontWeight(.bold)
                .foregroundColor(.white)
                .font(.subheadline)
                .frame(height: 40)
                .padding(.trailing, 15)
        }
        
        .background(Color(#colorLiteral(red: 0, green: 0.2744270563, blue: 0.3067463934, alpha: 1)))
        
        HStack (spacing: 0){
            Text("Click or search for a country for more details. Data reported hourly when available.")
                .padding()
        }
        .background(Color(#colorLiteral(red: 0.9492354989, green: 0.9486114383, blue: 0.9704449773, alpha: 1)))
    }
}

struct ListHeaderview_Previews: PreviewProvider {
    static var previews: some View {
        ListHeaderview()
    }
}
