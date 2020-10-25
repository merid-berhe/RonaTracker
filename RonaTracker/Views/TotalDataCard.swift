//
//  TotalDataCard.swift
//  RonaTracker
//
//  Created by Merid Berhe on 19.10.20.
//

import SwiftUI

struct TotalDataCard: View {
    
    var number: String = "err"
    var name: String = "Confirmed"
    var color: Color = .primary
    
    
    var body: some View {
        
        GeometryReader { geometry in
            
            VStack {
                Text(self.number)
                    .font(.subheadline)
                    .padding(5)
                    .foregroundColor(self.color)
                
                Text(self.name)
                    .font(.body)
                    .padding(5)
                    .foregroundColor(self.color)
                
            } //end of VStack
            
            .frame(width: geometry.size.width, height: 80, alignment: .center)
//            .background(Color("cardBackgroundColor"))
//            .cornerRadius(8.0)
        
        } //end of geometry
        
    }
}

struct TotalDataCard_Previews: PreviewProvider {
    static var previews: some View {
        TotalDataCard()
    }
}
