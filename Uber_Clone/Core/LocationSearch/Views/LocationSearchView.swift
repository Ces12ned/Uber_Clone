//
//  LocationSearchView.swift
//  Uber_Clone
//
//  Created by Edgar Cisneros on 07/06/23.
//

import SwiftUI

struct LocationSearchView: View {
    
    @State private var startLocationText = ""
    @State private var destinationLocationText = ""
    
    
    
    
    var body: some View {
        
        VStack{
            
            HStack{
                
                VStack{
                    
                    Circle()
                        .fill(Color(.systemGray3))
                        .frame(width: 6, height: 6)
                    
                    Rectangle()
                        .fill(Color(.systemGray3))
                        .frame(width: 1, height: 24)
                    
                    
                    Rectangle()
                        .fill(Color(.black))
                        .frame(width: 6, height: 6)
                    
                }
                
                VStack{
                    
                    TextField("   Current location", text: $startLocationText)
                        .frame(height: 30)
                        .background(Color(.systemGroupedBackground))
                        .padding(.trailing)
                    
                    TextField("   Where to?", text: $destinationLocationText)
                        .frame(height: 30)
                        .background(Color(.systemGray4))
                        .padding(.trailing)
                }
                
            }
            .padding(.top, 90)
            .padding()
            
            Divider()
                .padding(.vertical)
            
            ScrollView{
                
                VStack(alignment: .leading){
                    
                    ForEach(0..<20, id: \.self) {_ in
                        
                        LocationSearchResultsCell()

                    }
                }
            }
            
        }.background(.ultraThinMaterial)
         
    }
}

struct LocationSearchView_Previews: PreviewProvider {
    static var previews: some View {
        LocationSearchView()
    }
}
