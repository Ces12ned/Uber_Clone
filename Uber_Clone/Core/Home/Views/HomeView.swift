//
//  HomeView.swift
//  Uber_Clone
//
//  Created by Edgar Cisneros on 07/06/23.
//

import SwiftUI

struct HomeView: View {
    
    @State private var mapState = MapViewState.noInput
    @EnvironmentObject var locationViewModel: LocationSearchViewModel
    
    
    var body: some View {
        
        ZStack (alignment: .bottom) {
            
            ZStack(alignment: .top){
                
                UberMapViewRepresentable(mapState: $mapState)
                    .ignoresSafeArea()
                
                if mapState == .searchingForLocation{
                    LocationSearchView(mapState: $mapState)
                        
                }
                else if mapState == .noInput{
                    LocationSearchActivationView()
                        .padding(.top, 90)
                        .onTapGesture {
                            withAnimation(.spring()) {
                                mapState = .searchingForLocation
                            }
                        }
                }
                
                
                    
                
                MapViewActionButton(mapState: $mapState)                .padding(.leading)
                    .padding(.top)
            }
            
            if mapState == .locationSelected || mapState == .polylineAdded{
                RideRequestView()
                    .transition(.move(edge: .bottom))
            }
            
            
        }.edgesIgnoringSafeArea(.bottom)
            .onReceive(LocationManager.shared.$userLocation) { location in
                if let location = location {
                    locationViewModel.userLocation = location
                }
            }
            
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
