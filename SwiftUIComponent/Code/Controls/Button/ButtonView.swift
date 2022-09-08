//
//  ButtonView.swift
//  SwiftUIComponent
//
//  Created by Rajkumar Yadav on 9/5/22.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        VStack(spacing:20){
          
  //---------------------------------
           
            HStack {
                Button("Sign In", action: buttonClicked)
                Button("Register", action: buttonClicked)
            }
            .buttonStyle(.bordered)
            
    //---------------------------------
            
            Button(action: {
                print("Button action")
            }) {
                HStack {
                    Image(systemName: "bookmark.fill")
                    Text("Bookmark")
                }
            }
  //-------------------------------------
            
            Button(action: {
                print("Button action")
            }) {
                HStack {
                    Image(systemName: "bookmark.fill")
                    Text("Bookmark")
                }
            }.buttonStyle(GradientButtonStyle())

            
 //----------------------------
            
            Button(action: {
                print("Button action Color change")
            }) {
                HStack {
                    Image(systemName: "bookmark.fill")
                    Text("Bookmark")
                }
            }.buttonStyle(GradientButtonStyleColorChange())
           
            
            
            
   //----------------------------
            
            
            Button {
                
            } label: {
                Text("Hello World")
                    .fontWeight(.bold)
                    .font(.title)
                    .padding()
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .padding(10)
                    .border(Color.purple, width: 5)
                    
            }

            
                
            
            
  //------------------------------
       
            Button {
                
            } label: {
                Text("Hello World")
                    .fontWeight(.bold)
                    .font(.title)
                    .padding()
                    .background(Color.purple)
                    .cornerRadius(40)
                    .foregroundColor(.white)
                    .padding(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(Color.purple, lineWidth: 5))
                    
            }
  
            
            
            
 //--------------------------------------------------
            VStack(spacing:10){
                
                //------------------------------------------
                         
                         Button(action: {
                             print("Delete tapped!")
                         }) {
                             HStack {
                                 Image(systemName: "trash")
                                     .font(.title)
                                 Text("Delete")
                                     .fontWeight(.semibold)
                                     .font(.title)
                             }
                             .padding()
                             .foregroundColor(.white)
                             .background(Color.red)
                             .cornerRadius(40)
                         }
                
                
                
                
                
                //------------
                
                
                
                
            Button(action: {
                print("Delete tapped!")
            }) {
                HStack {
                    Image(systemName: "trash")
                        .font(.title)
                    Text("Delete")
                        .fontWeight(.semibold)
                        .font(.title)
                }
                .frame(minWidth: 0, maxWidth: .infinity)
                .padding()
                .foregroundColor(.white)
                .background(LinearGradient(gradient: Gradient(colors: [Color.green, Color.green.opacity(0.3)]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(40)
                .padding()
            }
            
            
    //-----------------------------
            
                
                
            }
            
            
        }
    }
    
    func buttonClicked(){
        print("Button func clicked")
    }
    
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}






struct GradientButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .foregroundColor(Color.white)
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .leading, endPoint: .trailing))
           
            .cornerRadius(15.0)
            .scaleEffect(configuration.isPressed ? 1.3 : 1.0)
            


    }
}




struct GradientButtonStyleColorChange: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .foregroundColor(Color.white)
            .padding()
            .background(configuration.isPressed ? Color.green : Color.yellow)
            .cornerRadius(15.0)
        
          
            


    }
}



