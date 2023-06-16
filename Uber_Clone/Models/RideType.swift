//
//  RideType.swift
//  Uber_Clone
//
//  Created by Edgar Cisneros on 15/06/23.
//

import Foundation

enum RideType: Int, CaseIterable, Identifiable{
    
    case uberX
    case uberBlack
    case uberXL
    
    
    var id: Int {return rawValue}
    
    var description: String{
        switch self{
        case .uberX: return "UberX"
        case .uberBlack : return "UberBlack"
        case .uberXL : return "UberXL"
        }
    }
    
    
    var imageName: String{
        switch self{
        case .uberX: return "UberXIcon"
        case .uberBlack : return "uber-black"
        case .uberXL : return "UberXIcon"
        }
    }
    
    var baseFare: Double{
        
        switch self{
        case .uberX: return 5
        case .uberBlack : return 20
        case .uberXL : return 10
        }
    }
    
    func computePrice(for distanceInMeters: Double) -> Double{
        
        switch self{
        case .uberX: return distanceInMeters * 0.015 + baseFare
        case .uberBlack : return distanceInMeters * 0.02 + baseFare
        case .uberXL : return distanceInMeters * 0.0175 + baseFare
        }
    }
    
}
