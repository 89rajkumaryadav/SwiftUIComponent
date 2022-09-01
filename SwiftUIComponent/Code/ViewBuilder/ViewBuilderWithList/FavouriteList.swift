//
//  FavouriteList.swift
//  SwiftUIComponent
//
//  Created by Rajkumar Yadav on 8/30/22.
//

import SwiftUI

struct FavouriteList: View {
    @EnvironmentObject var modelData: ModelData

    var body: some View {
        LandMarkList(list: modelData.Favorite)
    }
}

struct FavouriteList_Previews: PreviewProvider {
    static var previews: some View {
        FavouriteList()
    }
}
