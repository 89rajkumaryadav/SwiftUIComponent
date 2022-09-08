//
//  GroupBox_View.swift
//  SwiftUIComponent
//
//  Created by Rajkumar Yadav on 9/7/22.
//

import SwiftUI

struct GroupBox_View: View {
    
    var agrementText = "Styleable views is the thing I love in SwiftUI. You can separate your view logic and its style. You can easily apply different styles in different conditions whenever you need to change appearance depending on the platform or other environmental requirements. This week we will talk about GroupBox, another view container that SwiftUI provides, and allows us easily change its look and feel using a style protocol"
    
    
    var body: some View {
        VStack{
            GroupBox {
                
 //-----------------------------------------------------------------
                VStack(alignment: .leading) {
                    Text("Your account")
                        .font(.headline)
                    Text("Username: tswift89")
                    Text("City: Nashville")
                }
            }
//-----------------------------------------------------------------
            
            
            GroupBox {
                Text("Outer Content")

                GroupBox {
                    Text("Middle Content")

                    GroupBox {
                        Text("Inner Content")
                    }
                }
            }
            
            
 //-----------------------------------------------------------------
            
            GroupBox("Your account") {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Username: tswift89")
                        Text("City: Nashville")
                    }
                    
                    Spacer()
                }
            }.padding()
            
            
            //-----------------------------------------------------------------
            
            GroupBox(label:
                    Label("End-User Agreement", systemImage: "building.columns")
                ) {
                    ScrollView(.vertical, showsIndicators: true) {
                        Text(agrementText)
                            .font(.footnote)
                    }
                    .frame(height: 100)
                Toggle(isOn: .constant(true)) {
                        Text("I agree to the above terms")
                    }
            }
              //  .groupBoxStyle(PlainGroupBoxStyle())
                .groupBoxStyle(CardGroupBoxStyle())
                .padding()
            
            //-----------------------------------------------------------------
            
          
            
            
        }
    }
}

struct GroupBox_View_Previews: PreviewProvider {
    static var previews: some View {
        GroupBox_View()
    }
}



struct PlainGroupBoxStyle: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .leading) {
            configuration.label
            configuration.content
            
        }
    }
}


struct CardGroupBoxStyle: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .leading) {
            configuration.label
            configuration.content
        }
        .padding()
        .background(Color.red.opacity(0.4))
        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
    }
}
