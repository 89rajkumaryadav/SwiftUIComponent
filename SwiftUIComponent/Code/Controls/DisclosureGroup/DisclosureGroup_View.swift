//
//  DisclosureGroup_View.swift
//  SwiftUIComponent
//
//  Created by Rajkumar Yadav on 9/6/22.
//https://medium.com/devtechie/disclosure-group-in-swiftui-9aa727dc99a6#:~:text=DisclosureGroup%20is%20a%20view%20that,show%20and%20hide%20the%20contents.

import SwiftUI

struct DisclosureGroup_View: View {
    var body: some View {
        VStack(alignment: .leading, spacing:20) {
                   DisclosureGroup("Mastering SwiftUI 3") // 1
                   { // 2
                      Text("Learn SwiftUI 3 with Examples in this comprehansive video course.")
                   }.padding(70)
            
            
          
                    VStack(alignment: .leading) {
                        List(CourseListDG.sampleData) { course in
                            DisclosureGroup(
                                content: {
                                    ForEach(course.chapters, id: \.self) { chapter in
                                        DisclosureGroup(
                                            content: {
                                                Text("Watch video on \(chapter)")
                                            },
                                            label: {
                                                Text(course.name + " - " + chapter)
                                            }
                                        )
                                    }
                                },
                                label: {
                                    Text(course.name)
                                        .bold()
                                        .foregroundColor(Color.orange)
                                }
                            ).accentColor(Color.orange)
                        }
                        
                    }.padding()
                
            
            
            
        }
    }
}

struct DisclosureGroup_View_Previews: PreviewProvider {
    static var previews: some View {
        DisclosureGroup_View()
    }
}




extension CourseListDG {
    static var sampleData: [CourseListDG] {
        [
            CourseListDG(name: "Mastering SwiftUI 3", desc: "Learn SwiftUI 3 with Examples in this comprehansive video course.", chapters: ["Intro", "Project Setup", "Model Creation"]),
            CourseListDG(name: "iOS 15 WidgetKit", desc: "Learn all there is in iOS 15 Widgets with this practical video course on WidgetKit.", chapters: ["Intro", "Project Setup", "Model Creation"]),
            CourseListDG(name: "MVVM Design Pattern and Protocols", desc: "Combine power of protocol oriented programming with MVVM design pattern in SwiftUI by building Task List app.", chapters: ["Intro", "Project Setup", "Model Creation"])
        ]
    }
}



struct CourseListDG: Identifiable {
    var id = UUID()
    var name: String
    var desc: String
    var chapters: [String]
}
