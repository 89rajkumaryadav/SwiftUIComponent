//
//  GeneralModifire.swift
//  SwiftUIComponent
//
//  Created by Rajkumar Yadav on 9/1/22.
//

import SwiftUI

struct WaterMark: ViewModifier{
    var text: String
    func body(content: Content) -> some View {
       
        ZStack(alignment: .bottomTrailing){
            content
            Text(text)
                .font(.caption)
                .foregroundColor(.white)
                .padding(5)
                .background(Color.black)
        }
            
    }
}


extension View {
    
    func setWaterMark(text:String) -> some View {
        modifier(WaterMark(text: text))
    }
}
