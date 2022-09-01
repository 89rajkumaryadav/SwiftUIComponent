//
//  TextModifires.swift
//  SwiftUIComponent
//
//  Created by Rajkumar Yadav on 9/1/22.
//

import SwiftUI


extension View {
    func setHeadLine() -> some View {
        modifier(TextHeadLine())
    }
}


struct TextHeadLine: ViewModifier{
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: 16))
            .font(.footnote)
            .foregroundColor(.red)
    }
    
}
