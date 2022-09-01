//
//  ViewModifireView.swift
//  SwiftUIComponent
//
//  Created by Rajkumar Yadav on 9/1/22.
//

import SwiftUI

struct ViewModifireView: View {
    
    var landmarks = ModelData().landmarks
    var body: some View {
        VStack{
            
            List{
                Text("ViewModifire title test.")
                    .setHeadLine()
                   // .modifier(TextHeadLine())
                
                Color.blue
                    .frame(width: 300, height: 200)
                    .setWaterMark(text: "This is New Watermark.")
                
                
                ForEach(landmarks) { landmark in
                    landmark.image
                        .setupImage()
                        .setWaterMark(text: landmark.park)
                        .centerInList()
                        
                }
                    
            }
            
        }
    }
}


extension Image{
    func setupImage() -> some View {
      self
        .resizable()
        .scaledToFill()
        
    }
}

extension View {
    func centerInList() -> some View  {
        self.modifier(HorizontalCenter())
    }
}

struct HorizontalCenter: ViewModifier {
    func body(content: Content) -> some View {
        HStack{
            Spacer()
            content
            Spacer()
        }
    }
}

struct ViewModifireView_Previews: PreviewProvider {
    static var previews: some View {
        ViewModifireView()
    }
}










