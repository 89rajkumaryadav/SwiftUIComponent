//
//  Form_View.swift
//  SwiftUIComponent
//
//  Created by Rajkumar Yadav on 9/6/22.
//https://www.hackingwithswift.com/quick-start/swiftui/basic-form-design
//https://www.simpleswiftguide.com/swiftui-form-tutorial-how-to-create-and-use-form-in-swiftui/
//
//Styling swiftui form
//https://swiftuirecipes.com/blog/styling-swiftui-form

import SwiftUI

struct Form_View: View {
    @State var username: String = ""
    @State var isPrivate: Bool = true
    @State var notificationsEnabled: Bool = false
    @State private var previewIndex = 0
    var previewOptions = ["Always", "When Unlocked", "Never"]

    var body: some View {
        NavigationView {
            Form {
                
                HStack {
                    Image("turtlerock")
                        .resizable()
                        .frame(width: 200, height: 200, alignment: Alignment.center)
                    .cornerRadius(100)
                    .centerInList()
                }
                  
                ColorPicker(selection: .constant(.red)) {
                    Text("Choose color")
                }
                
                Section(header: Text("PROFILE")) {
                    TextField("Username", text: $username)
                    Toggle(isOn: $isPrivate) {
                        Text("Private Account")
                    }
                }.listRowBackground(Color.yellow.opacity(0.5))
                
                Group{
                Section(header: Text("NOTIFICATIONS")) {
                    Toggle(isOn: $notificationsEnabled) {
                        Text("Enabled")
                    }
                    Picker(selection: $previewIndex, label: Text("Show Previews")) {
                        ForEach(0 ..< previewOptions.count) {
                            Text(self.previewOptions[$0])
                        }
                    }
                }
                
                Section(header: Text("ABOUT")) {
                    HStack {
                        Text("Version")
                        Spacer()
                        Text("2.2.1")
                    }
                }
                
                Section {
                    Button(action: {
                        print("Perform an action here...")
                    }) {
                        Text("Reset All Settings")
                    }
                }
                }.listRowBackground(Color.indigo.opacity(0.5))
            }
            .navigationBarTitle("Settings")
            .foregroundColor(.gray)
            .accentColor(.orange)
            
            // Change the background color
            .background(Color.secondary.opacity(0.2))
            .onAppear { // ADD THESE
              UITableView.appearance().backgroundColor = .clear
            }
            .onDisappear {
              UITableView.appearance().backgroundColor = .systemGroupedBackground
            }
            
            //-------------
            
        }
    }
}

struct Form_View_Previews: PreviewProvider {
    static var previews: some View {
        Form_View()
    }
}
