//
//  RideRequestView.swift
//  Uber_Clone
//
//  Created by Edgar Cisneros on 15/06/23.
//

import SwiftUI

struct RideRequestView: View {
    @State private var selectedRideType: RideType = .uberX
    @EnvironmentObject var locationViewModel: LocationSearchViewModel
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
                        
                        Text(locationViewModel.pickUpTime ?? "")
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(Color(.gray))
                    }
                    
                    HStack{
                        
                        if let location = locationViewModel.selectedUberLocation{
                            Text(location.title)
                                .font(.system(size: 14 ,weight:.semibold))
                        }
                        
                        
                        Spacer()
                        
                        Text(locationViewModel.dropOffTime ?? "")
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
                    ForEach (RideType.allCases, id: \.self){ type in
                        
                        VStack(alignment: .leading) {
                            Image(type.imageName)
                                .resizable()
                                .scaledToFit()
                            
                            VStack(alignment: .leading, spacing: 8){
                                Text(type.description)
                                    .font(.system(size: 14, weight: .semibold))
                                Text((locationViewModel.computeRidePrice(forType: type)).toCurrency())
                                    .font(.system(size: 14, weight: .semibold))
                            }.padding(10)
                            
                        }.frame(width: 112, height: 140)
                            .background(type == selectedRideType ? .blue : Color.theme.secondaryBackGColor)
                            .scaleEffect(type == selectedRideType ? 1.1 : 1.0 )
                            .cornerRadius(10)
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    selectedRideType = type
                                }
                            }
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
            .background(Color.theme.secondaryBackGColor)
            .cornerRadius(10)
            .padding()
            
            Button {
                
            } label: {
                
                Text("CONFIRM RIDE")
                    .fontWeight(.bold)
                    .frame(width: UIScreen.main.bounds.width - 32 , height: 50)
                    .foregroundColor(.white)
                    .background(Color(uiColor: .systemBlue))
                    .cornerRadius(10)
            }

        }
        .padding(.bottom, 24)
        .background(Color.theme.backgroundColor)
        .cornerRadius(24)
        
            
    }
}

struct RideRequestView_Previews: PreviewProvider {
    static var previews: some View {
        RideRequestView()
    }
}
