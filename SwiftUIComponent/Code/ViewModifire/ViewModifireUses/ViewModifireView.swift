//
//  ViewModifireView.swift
//  SwiftUIComponent
//
//  Created by Rajkumar Yadav on 9/1/22.
//

import SwiftUI

struct ViewModifireView: View {
    var body: some View {
        VStack{
            
            VStack{
                Text("ViewModifire title test.")
                    .setHeadLine()
                   // .modifier(TextHeadLine())
                
                Color.blue
                    .frame(width: 300, height: 200)
                    .setWaterMark(text: "This is New Watermark.")
                    
            }
            
        }
    }
}

struct ViewModifireView_Previews: PreviewProvider {
    static var previews: some View {
        ViewModifireView()
    }
}


