//
//  RideRequestView.swift
//  Uber_Clone
//
//  Created by Edgar Cisneros on 15/06/23.
//

import SwiftUI

struct RideRequestView: View {
    var body: some View {
        
        VStack{
            
            Rectangle()
                .frame(width: 30, height: 2)
                .foregroundColor(.gray)
                .padding(6)
            
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
                
                VStack(alignment: .leading,spacing: 24){
                    
                    HStack{
                        
                        Text("Current location")
                            .foregroundColor(Color(.gray))
                            .font(.system(size: 16))
                        Spacer()
                        
                        Text("1:30 PM")
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(Color(.gray))
                    }
                    
                    HStack{
                        
                        Text("Destination")
                            .font(.system(size: 16))
                        Spacer()
                        
                        Text("1:30 PM")
                            .font(.system(size: 14, weight: .semibold))
                            
                    }
                    
                }.padding(.leading,8)

            }.padding()
            
            Divider()
            
            Text("SUGGESTED RIDES")
                .foregroundColor(Color(.gray))
                .font(.subheadline)
                .frame(maxWidth: .infinity , alignment: .leading)
                .padding()
                
            ScrollView(.horizontal){
                
                HStack(spacing: 12) {
                    ForEach (0 ..< 3, id: \.self){ _ in
                        
                        VStack(alignment: .leading) {
                            Image("UberXIcon")
                                .resizable()
                                .scaledToFit()
                            
                            VStack(spacing: 8){
                                Text("UberX")
                                    .font(.system(size: 14, weight: .semibold))
                                Text("$20.00")
                                    .font(.system(size: 14, weight: .semibold))
                            }.padding(10)
                            
                        }.frame(width: 112, height: 140)
                            .background(Color(.systemGroupedBackground))
                            .cornerRadius(10)

                    }
                }

            }.padding(.horizontal)
            
            HStack(spacing: 8){
                Text("Visa")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(6)
                    .background(.blue)
                    .cornerRadius(4)
                    .foregroundColor(.white)
                    .padding(.leading)
                
                Text("**** 1234")
                
                Spacer()
                
                
                Image(systemName: "chevron.right")
                    .imageScale(.medium)
                    .padding()
                
                
                
                
            }
            .frame(height: 50)
            .background(Color(.systemGroupedBackground))
            .cornerRadius(10)
            .padding()
            
            Button {
                
            } label: {
                
                Text("CONFIRM RIDE")
                    .fontWeight(.bold)
                    .frame(width: UIScreen.main.bounds.width - 32 , height: 50)
                    .foregroundColor(.white)
                    .background(Color(.blue))
                    .cornerRadius(10)
            }

        }
        .padding(.bottom, 24)
        .background(.white)
        .cornerRadius(24)
        
            
    }
}

struct RideRequestView_Previews: PreviewProvider {
    static var previews: some View {
        RideRequestView()
    }
}
