//
//  Menu.swift
//  SwiftUIComponent
//
//  Created by Rajkumar Yadav on 9/7/22.
//

import SwiftUI

struct Menu_View: View {
    var body: some View {
        NavigationView {
            VStack(spacing:20){
                
          //========================
                Menu("Actions") {
                    Button("Duplicate", action: duplicate)
                    Button("Rename", action: rename)
                    Button("Delete…", action: delete)
                    Menu("Copy") {
                        Button("Copy", action: copy)
                        Button("Copy Formatted", action: copyFormatted)
                        Button("Copy Library Path", action: copyPath)
                    }
                }
         //==========================
                
            // primaryAction will call in button click and menu popup will present on Long press
                Menu {
                    Button(action: general) {
                        Label("Add to Reading List", systemImage: "eyeglasses")
                    }
                    Button(action: general) {
                        Label("Add Bookmarks for All Tabs", systemImage: "book")
                    }
                    Button(action: general) {
                        Label("Show All Bookmarks", systemImage: "books.vertical")
                    }
                } label: {
                    Label("Add Bookmark", systemImage: "book")
                } primaryAction: {
                    addBookmark()
                }
                
        //======================
                
                Text("Hello World!")
                            .toolbar {
                                ToolbarItem(placement: .primaryAction) {
                                    Menu(content: {
                                        Section {
                                            Button(action: {}) {
                                                Label("Create a file", systemImage: "doc")
                                            }

                                            Button(action: {}) {
                                                Label("Create a folder", systemImage: "folder")
                                            }
                                        }

                                        Section(header: Text("Secondary actions")) {
                                            Button(action: {}) {
                                                Label("Remove old files", systemImage: "trash")
                                                    .foregroundColor(.red)
                                            }
                                        }
                                    }, label: {
                                        Label("Add", systemImage: "plus")
                                    }).menuStyle(RedMenu())
                                }
                            }
                
                //=================
                
              
                
            }
        }
    }
    
    
   
    
    
    struct RedMenu: MenuStyle {
        func makeBody(configuration: Configuration) -> some View {
            Menu(configuration)
                .foregroundColor(.red)
        }
    }
    
    
    
    
    func general(){
        print("general")
    }
    
    
    func addBookmark(){
        print("addBookmark")
    }
    
    func copy(){
        print("copy")
    }
    
    func copyPath(){
        print("copyPath")
    }
    
    
    func duplicate(){
        print("duplicate")
    }
    
    func copyFormatted(){
        print("copyFormatted")
    }
    
    func rename(){
        print("rename")
    }
    
    func delete(){
        print("delete")
    }
    
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu_View()
    }
}
