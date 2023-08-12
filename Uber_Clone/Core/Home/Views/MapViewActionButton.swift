//
//  MapViewActionButton.swift
//  Uber_Clone
//
//  Created by Edgar Cisneros on 07/06/23.
//

import SwiftUI

struct MapViewActionButton: View {
    
    @Binding var mapState: MapViewState
    @Binding var showMenu: Bool
    @EnvironmentObject var viewModel: LocationSearchViewModel
    
    var body: some View {
        
        Button {
            withAnimation(.spring()) {
                
                actionForState(mapState)
            }
        } label: {
            Image(systemName: imageNameForState(mapState) )
                .font(.title2)
                .foregroundColor(.black)
                .padding()
                .background(.white)
                .clipShape(Circle())
                    .shadow(color: .black, radius: 6)
 
        }.frame(maxWidth: .infinity, alignment: .leading)
    }
    
    
    func actionForState(_ state: MapViewState){
        
        switch state{
        case .noInput:
            showMenu.toggle()
        case .searchingForLocation:
            mapState = .noInput
        case .locationSelected, .polylineAdded:
            mapState = .noInput
            viewModel.selectedUberLocation = nil
        
            
            
        }
        
    }
    
    func imageNameForState(_ state: MapViewState) -> String{
        
        switch state{
            
        case .noInput:
            return "line.3.horizontal"
        case .searchingForLocation, .locationSelected, .polylineAdded:
            return "arrow.backward"
        }
        
        
        
    }
}

struct MapViewActionButton_Previews: PreviewProvider {
    static var previews: some View {
        MapViewActionButton(mapState: .constant(.noInput), showMenu: .constant(false))
    }
}
