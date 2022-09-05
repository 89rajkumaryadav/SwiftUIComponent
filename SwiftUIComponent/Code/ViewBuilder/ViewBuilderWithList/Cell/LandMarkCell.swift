//
//  LandMarkCell.swift
//  SwiftUIComponent
//
//  Created by Rajkumar Yadav on 8/30/22.
//

import SwiftUI

struct LandMarkCell: View {
    var landmark: Landmark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 80, height: 50, alignment: .center)
         
                VStack(alignment: .leading) {
                    HStack {
                        Text(landmark.name)
                            .font(.headline)
                        .foregroundColor(.gray)
                        
                        landmark.isFavorite ? Image(systemName: "star.fill")
                            .resizable()
                            .frame(width:8, height:8)
                        :  nil
                    }
                    Text(landmark.park)
                        .font(.caption)
                        .foregroundColor(.secondary)
                    Spacer()
                }
                
            
            
            Spacer()
        }
    }
}

struct LandMarkCell_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkCell(landmark: ModelData().landmarks[0])
    }
}



