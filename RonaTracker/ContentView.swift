//
//  ContentView.swift
//  Rona Tracker
//
//  Created by Merid Berhe on 18.10.20.
//

import SwiftUI

struct ContentView: View {
    
    
    init() {
        UITabBar.appearance().backgroundColor = .clear
        }
    
    var body: some View {
        
        TabView {
            
            RecentView().tabItem {
                Image(systemName: "waveform.path.ecg").font(.system(size: 20, weight: .bold, design: .rounded))
                    Text("Cases")
            
                }
                .tag(0)
            
            MapContainerView().tabItem{
                    Image(systemName: "mappin.circle.fill").font(.system(size: 20, weight: .bold))
                    Text("Map")
                        
                } .edgesIgnoringSafeArea(.vertical)
                .tag(1)
        } .onAppear() {
            UITabBar.appearance().isTranslucent = true
        } .accentColor(.red)
    }
}

//private struct Tab: View {
//
//    let imageName: String
//    let text:  String
//
//    var body: some View {
//        VStack {
//            Image(systemName: imageName)
//            Text(text)
//        }
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
