//
//  SideMenuViewModel.swift
//  Uber_Clone
//
//  Created by Edgar Cisneros on 11/08/23.
//

import SwiftUI

enum SideMenuViewModel: Int, CaseIterable{
    
    case trips
    case payment
    case appsettings
    case messages
    case uberOne
    case uberAccount
    
    var description: String{
        
        switch self{

        case .trips:
            return "Trips"
        case .payment:
            return "Payment"
        case .appsettings:
            return "Settings"
        case .messages:
            return "Messages"
        case .uberOne:
            return "Uber One"
        case .uberAccount:
            return "Manage Uber Account"
        }
    }
    
    var imageName: String{
        
        switch self{

        case .trips:
            return "clock.fill"
        case .payment:
            return "creditcard.fill"
        case .appsettings:
            return "gear"
        case .messages:
            return "envelope.fill"
        case .uberOne:
            return "circle"
        case .uberAccount:
            return "person.fill"
        }
        
    }
    
}
