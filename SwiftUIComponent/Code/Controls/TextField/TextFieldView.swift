//
//  TextFieldView.swift
//  SwiftUIComponent
//
//  Created by Rajkumar Yadav on 9/6/22.
//

import SwiftUI

//Textfield in swiftUI
//https://sarunw.com/posts/textfield-in-swiftui/


struct TextFieldView: View {
    @State var username:String = ""
    enum FieldType {
          case name
          case address
          case job
      }
      
      @State private var name = ""
      @State private var address = ""
      @State private var job = ""
      @FocusState private var focusedField: FieldType?

    
    @State private var message = ""
     @FocusState private var nameFieldIsFocused: Bool
    
    
    @State private var user = ""
       @State private var password = ""
    
    
    var body: some View {
        VStack{
            VStack{
                
//-------------------------------------------
                TextField("Username", value: $username,
                          formatter: NumberFormatter(),
                          onEditingChanged: { (isBegin) in
                    
                    print("Value:\(username)")
                              if isBegin {
                                  print("Begins editing")
                                 
                              } else {
                                  print("Finishes editing")
                              }
                          },
                          onCommit: {
                              print("commit")
                          }).padding()
                    .foregroundColor(.pink)
                   // .textFieldStyle(RoundedBorderTextFieldStyle())
                    .border(Color.pink, width: 2)
                    .padding()
                
  //-----------------------------
                
                TextField("Title", text: $username, prompt: Text("Prompt"))
                    .padding()
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.twitter)
                
                
 //-------------------------------------------------------
                
                
                VStack {
                           TextField("Nome", text: $name)
                               .focused($focusedField, equals: .name)
                               
                           TextField("Indirizzo", text: $address)
                               .focused($focusedField, equals: .address)
                               
                           TextField("Professione", text: $job)
                               .focused($focusedField, equals: .job)
                               .submitLabel(.done)
                       }
                       .submitLabel(.next)
                       .textFieldStyle(.roundedBorder)
                       .padding()
                       .onSubmit {
                           switch focusedField {
                           case .name     : focusedField = .address
                           case .address  : focusedField = .job
                           default        : focusedField = nil
                           }
                       }
                       .padding()
                
                
  //--------------------------------------------------------------
                
                HStack {
                                TextField("Insert your name", text: $message)
                                    .textFieldStyle(.roundedBorder)
                                    .focused($nameFieldIsFocused)
                                    .toolbar {
                                        ToolbarItemGroup(placement: .keyboard) {
                                            HStack {
                                                Spacer()
                                                Button("CLOSE") {
                                                    nameFieldIsFocused = false
                                                }
                                            }
                                        }
                                    }
                            }
                            .padding()
                
                
                
                
                //------------------
                
                
                
                Form {
                           TextField("Username", text: $user)
                           SecureField("Password", text: $password)
                       }
                       .onSubmit {
                           guard username.isEmpty == false && password.isEmpty == false else { return }
                           print("Authenticating…")
                       }
                
                
                
                
                Spacer()
            }
        }
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}
