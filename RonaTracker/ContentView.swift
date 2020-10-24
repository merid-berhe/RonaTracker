//
//  ContentView.swift
//  Rona Tracker
//
//  Created by Merid Berhe on 18.10.20.
//

import SwiftUI

struct ContentView: View {
    
    
    init() {
            UITabBar.appearance().backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        }
    
    var body: some View {
        let configuration = UIImage.SymbolConfiguration(weight: .ultraLight)
        
        TabView {
            
            RecentView()
                .tabItem{
                    Tab(imageName: "waveform.path.ecg", text: "Cases")
            
                }
                .tag(0)
            
            MapContainerView()
                .edgesIgnoringSafeArea(.vertical)
                .tabItem{
                    Tab(imageName: "mappin.circle.fill", text: "Map")
                }
                .tag(1)
        }
        
        
    }
}

private struct Tab: View {

    let imageName: String
    let text:  String
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
            Text(text)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
