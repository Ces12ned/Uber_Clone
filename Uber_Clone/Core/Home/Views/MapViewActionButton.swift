//
//  MapViewActionButton.swift
//  Uber_Clone
//
//  Created by Edgar Cisneros on 07/06/23.
//

import SwiftUI

struct MapViewActionButton: View {
    
    @Binding var showLocationSearchView: Bool
    
    var body: some View {
        
        Button {
            withAnimation(.spring()) {
                
                if showLocationSearchView{
                    showLocationSearchView.toggle()
                }
            }
        } label: {
            Image(systemName:  showLocationSearchView ?  "arrow.backward" : "line.3.horizontal")
                .font(.title2)
                .foregroundColor(.black)
                .padding()
                .background(.white)
                .clipShape(Circle())
                    .shadow(color: .black, radius: 6)
 
        }.frame(maxWidth: .infinity, alignment: .leading)

        
    }
}

struct MapViewActionButton_Previews: PreviewProvider {
    static var previews: some View {
        MapViewActionButton(showLocationSearchView: .constant(false))
    }
}
