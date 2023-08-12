//
//  SideMenuRowView.swift
//  Uber_Clone
//
//  Created by Edgar Cisneros on 11/08/23.
//

import SwiftUI

struct SideMenuRowView: View {
    var body: some View {
        
        ForEach(SideMenuViewModel.allCases, id: \.rawValue) {
            option in
                HStack(spacing: 24){
                    
                    Image(systemName: option.imageName)
                    Text(option.description).fontWeight(.light)
                    Spacer()
                }
                .padding(.horizontal)
                .frame(height: 60)
            }
    }
}

struct SideMenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuRowView()
    }
}
