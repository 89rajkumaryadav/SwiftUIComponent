//
//  OutlineGroup_View.swift
//  SwiftUIComponent
//
//  Created by Rajkumar Yadav on 9/7/22.
// https://swiftwithmajid.com/2020/09/02/displaying-recursive-data-using-outlinegroup-in-swiftui/
//https://www.appcoda.com/learnswiftui/swiftui-expandable-list.html
//https://www.answertopia.com/swiftui/a-swiftui-list-outlinegroup-and-disclosuregroup-tutorial/


import SwiftUI

struct OutlineGroup_View: View {
    
    let categories: [Tree<String>] = [
        .init(
            value: "Clothing",
            children: [
                .init(value: "Hoodies"),
                .init(value: "Jackets"),
                .init(value: "Joggers"),
                .init(value: "Jumpers"),
                .init(
                    value: "Jeans",
                    children: [
                        .init(value: "Regular"),
                        .init(value: "Slim")
                    ]
                ),
            ]
        ),
        .init(
            value: "Shoes",
            children: [
                .init(value: "Boots"),
                .init(value: "Sliders"),
                .init(value: "Sandals"),
                .init(value: "Trainers"),
            ]
        )
    ]
    
    var body: some View {
        VStack{
            
            //-----------------
            OutlineGroup(categories, id: \.value, children: \.children) { tree in
                       Text(tree.value).font(.subheadline)
                   }
            
            //-----------------
            
            
          // We can use OutlineGroup with list as well with SidebarListStyle
            List(categories, id: \.value, children: \.children) { tree in
                        Text(tree.value).font(.subheadline)
                    }.listStyle(SidebarListStyle())
            
            //---------------
            
            
            List {
                       ForEach(categories, id: \.self) { section in
                           Section(header: Text(section.value)) {
                               OutlineGroup(
                                   section.children ?? [],
                                   id: \.value,
                                   children: \.children
                               ) { tree in
                                   Text(tree.value)
                                       .font(.subheadline)
                               }
                           }
                       }
                   }.listStyle(SidebarListStyle())
            
            
            
        }
    }
}

struct OutlineGroup_View_Previews: PreviewProvider {
    static var previews: some View {
        OutlineGroup_View()
    }
}




struct Tree<Value: Hashable>: Hashable {
    let value: Value
    var children: [Tree]? = nil
}



