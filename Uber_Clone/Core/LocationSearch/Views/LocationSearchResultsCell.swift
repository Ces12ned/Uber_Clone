//
//  LocationSearchResultsCell.swift
//  Uber_Clone
//
//  Created by Edgar Cisneros on 07/06/23.
//

import SwiftUI

struct LocationSearchResultsCell: View {
    let placeName: String
    let addressName: String
    var body: some View {
        
        HStack{
            
            Image(systemName: "mappin.circle.fill")
                .resizable()
                .foregroundColor(.blue)
                .frame(width:40,height: 40)
                
            VStack(alignment: .leading, spacing: 4){
                
                Text(placeName)
                    .font(.body)
                
                Text(addressName)
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
                
                Divider()

            }.padding(.leading)
                .padding(.vertical, 8 )
            
        }.padding(.horizontal)
        
        
    }
    
    
}

struct LocationSearchResultsCell_Previews: PreviewProvider {
    static var previews: some View {
        LocationSearchResultsCell(placeName: "Dummy Place Name", addressName: "Dummy Address")
    }
}
