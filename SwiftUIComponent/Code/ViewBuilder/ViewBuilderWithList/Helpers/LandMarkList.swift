//
//  LandMarkList.swift
//  SwiftUIComponent
//
//  Created by Rajkumar Yadav on 8/30/22.
//

import SwiftUI

struct LandMarkList<Content>: View where  Content: View {
    var landMarkList: [Landmark]
   
    var content: Content
    
    init( list:[Landmark], @ViewBuilder content:  () -> Content ){
        self.landMarkList = list
        self.content = content()
    }
    
    var body: some View {
        
        VStack{
            List (landMarkList) { landmark in
                LandMarkCell(landmark: landmark)
            }
            content
           
        }
            
    }
}



extension LandMarkList where Content == EmptyView  {
   
    init(list: [Landmark]) {
        self.init(list: list){
            EmptyView()
        }
    }
    
}













