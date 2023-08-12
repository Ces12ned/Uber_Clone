//
//  SideMenuView.swift
//  Uber_Clone
//
//  Created by Edgar Cisneros on 11/08/23.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        
        VStack(alignment: .leading){
            
            HStack(spacing: 30){
                
                VStack(alignment: .leading){
                    
                    Text("Edgar Cisneros")
                        .fontWeight(.bold).font(.title2)
                    
                    ZStack{
                        
                        Rectangle()
                            .frame(width: 85, height: 20)
                            .foregroundColor(.gray.opacity(0.3))
                        
                        HStack{
                            Image(systemName: "star.fill")
                                .foregroundColor(.black)
                            
                            Text("4.94").fontWeight(.light)
                        }
                    }
                    
                }
                
                Image("Ed")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 75, height: 75)
                    .clipShape(Circle()).overlay(Circle().stroke(Color(.white),lineWidth: 2))
                    
                
            }.padding()
            
            Divider()
                .padding()
            
            SideMenuRowView()

            Spacer()
        }.padding(.leading)
        
        
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
