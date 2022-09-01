//
//  AllList.swift
//  SwiftUIComponent
//
//  Created by Rajkumar Yadav on 8/30/22.
//

import SwiftUI

struct AllList: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        VStack{
            LandMarkList(list: modelData.landmarks)
        }
    }
}

struct AllList_Previews: PreviewProvider {
    static var previews: some View {
        AllList()
    }
}


