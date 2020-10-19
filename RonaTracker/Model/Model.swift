//
//  Model.swift
//  RonaTracker
//
//  Created by Merid Berhe on 18.10.20.
//

import Foundation

struct TotalData {

    
    let confirmed: Int
    let critical: Int
    let deaths: Int
    let recovered: Int
    
    var fatalityRate: Double {
        return (100.00 * Double(deaths)) / Double(confirmed)
    }
    
    var recoveredRate: Double {
        return (100.00 * Double(recovered)) / Double(confirmed)
    }
}

struct CountryData {
    
    let country: String
    let confirmed: Int64
    let critical: Int64
    let deaths: Int64
    let recovered: Int64
    let longitude: Double
    let latitude: Double
    
    var fatalityRate: Double {
        return (100.00 * Double(deaths)) / Double(confirmed)
    }
    
    var recoveredRate: Double {
        return (100.00 * Double(recovered)) / Double(confirmed)
    }
}

let testTotalData = TotalData (confirmed: 200, critical: 100, deaths: 20, recovered: 50)
let testCountryData = CountryData(country: "Test", confirmed: 300, critical: 400, deaths: 50, recovered: 334, longitude: 0.0, latitude: 0.0)
