//
//  SolarResourceModel.swift
//  First-Collaboration-Refactoring
//
//  Created by Barbare Tepnadze on 19.05.24.
//

import Foundation

struct SolarData: Codable {
    let outputs: Outputs
    
    struct Outputs: Codable {
        let avg_dni: AnnualMonthlyData
        let avg_ghi: AnnualMonthlyData
        let avg_lat_tilt: AnnualMonthlyData
        
        struct AnnualMonthlyData: Codable {
            let annual: Double
            let monthly: [String: Double]
        }
    }
}
