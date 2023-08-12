//
//  Root.swift
//  Uber_Clone
//
//  Created by Edgar Cisneros on 12/08/23.
//

import SwiftUI

struct Root: View {
    
    @StateObject var locationViewModel = LocationSearchViewModel()
    @State var showMenu : Bool = false
    
    var body: some View {
        
        ZStack(alignment: .leading){
            
            
            HomeView(showMenu: $showMenu)
                .environmentObject(locationViewModel)
            
            if showMenu{
                ZStack{
                    Color(.black)
                        .opacity(0.5)
                        .edgesIgnoringSafeArea(.all)
                        
                }.onTapGesture {
                    withAnimation(.easeInOut){
                        showMenu = false
                    }
                }
            }
            
            SideMenuView()
                .frame (width: 350)
                .background (Color .white)
                .offset(x: showMenu ? 0 : -350)
            
            
        }
    }
}

struct Root_Previews: PreviewProvider {
    static var previews: some View {
        Root()
    }
}
