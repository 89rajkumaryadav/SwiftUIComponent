//
//  ColorPicker_View.swift
//  SwiftUIComponent
//
//  Created by Rajkumar Yadav on 9/7/22.
//https://serialcoder.dev/text-tutorials/swiftui/presenting-colorpicker-in-swiftui/



import SwiftUI

struct ColorPicker_View: View {
    @State private var shape1Color = Color.yellow
        @State private var shape2Color = Color.blue
        
        var body: some View {
            VStack {
                HStack {
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 120, height: 120)
                        .foregroundColor(shape1Color)
                        .padding(.horizontal)
                    
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 120, height: 120)
                        .foregroundColor(shape2Color)
                        .padding(.horizontal)
                }
                
                Form {
                    Section(header: Text("Color Settings")) {
                        ColorPicker("Shape 1 color", selection: $shape1Color)
                        ColorPicker("Shape 2 color", selection: $shape2Color)
                    }
                    
                    ColorPicker(selection: $shape2Color, label: {
                        Text("Change 🟦 color")
                            .font(.title)
                            .fontWeight(.bold)
                    })
                    
                }
              
                .padding(.horizontal)
                .padding(.top, 50)
            }
        }
}

struct ColorPicker_View_Previews: PreviewProvider {
    static var previews: some View {
        ColorPicker_View()
    }
}
