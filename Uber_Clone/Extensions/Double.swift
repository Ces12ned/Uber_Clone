//
//  Double.swift
//  Uber_Clone
//
//  Created by Edgar Cisneros on 16/06/23.
//

import Foundation

extension Double {
    
    private var currencyFormatter: NumberFormatter{
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    func toCurrency() -> String {
        return currencyFormatter.string(for: self) ?? ""
    }
    
}
