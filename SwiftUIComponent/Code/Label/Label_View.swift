//
//  Label_View.swift
//  SwiftUIComponent
//
//  Created by Rajkumar Yadav on 9/6/22.
//https://sarunw.com/posts/swiftui-label-a-standard-way-to-label-user-interface-items/#:~:text=Label%20in%20SwiftUI%20is%20a,custom%20image%20for%20an%20icon.
// https://www.simpleswiftguide.com/swiftui-label-tutorial-how-to-create-and-use-label-in-swiftui/



import SwiftUI

struct Label_View: View {
    var body: some View {
        VStack(spacing:50) {
                    // SF Symbols
                    Label("Favorites", systemImage: "heart")

            
            //----------------------
                    // A custom image
                    
            Label {
                       Text("Favorites")
                           .bold()
                           .foregroundColor(.pink)
                   } icon: {
                       Image("turtlerock")
                           .resizable()
                           .frame(width: 50, height: 50)
                           .symbolVariant(.fill)
                           .foregroundColor(.pink)
                       
                   }
   //-------------------------------------------
            
            
            Label {
                        Text("Favorites")
                            .bold()
                            .foregroundColor(.pink)
                    } icon: {
                        Image(systemName: "heart")
                            .font(.body.bold())
                            .symbolVariant(.fill)
                            .foregroundColor(.pink)
                        
                    }
            
            
            //--------------------------------------
            
            VStack {
                        Label("Favorites", systemImage: "heart")
                            // equals to .labelStyle(.automatic)
                        Label("Favorites", systemImage: "heart")
                            .labelStyle(.titleOnly)
                        Label("Favorites", systemImage: "heart")
                            .labelStyle(.iconOnly)
                        Label("Favorites", systemImage: "heart")
                            .labelStyle(.titleAndIcon)
                    }
            
            //-----------------------
            //Custom style
            Label("Custom style", systemImage: "heart")
                      .labelStyle(AdaptiveLabelStyle())
            
            
                }
    }
}

struct Label_View_Previews: PreviewProvider {
    static var previews: some View {
        Label_View()
    }
}





struct AdaptiveLabelStyle: LabelStyle {
    @Environment(\.verticalSizeClass) var verticalSizeClass: UserInterfaceSizeClass?
    
    func makeBody(configuration: Configuration) -> some View {
        if verticalSizeClass == .compact {
            // 1
            HStack {
                configuration.icon
                configuration.title
            }
        } else {
            // 2
            VStack {
                configuration.icon
                configuration.title
            }
        }
    }
}
