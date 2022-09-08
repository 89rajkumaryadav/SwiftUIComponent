//
//  Stepper_View.swift
//  SwiftUIComponent
//
//  Created by Rajkumar Yadav on 9/8/22.
//

import SwiftUI

struct Stepper_View: View {
    @State private var value = 0
    let colors: [Color] = [.orange, .red, .gray, .blue,
                           .green, .purple, .pink]
    
    @State private var value1 = 0
        let step = 5
        let range = 1...50
    
    

    func incrementStep() {
        value += 1
        if value >= colors.count { value = 0 }
    }

    func decrementStep() {
        value -= 1
        if value < 0 { value = colors.count - 1 }
    }

    var body: some View {
        
        VStack{
        Stepper {
            Text("Value: \(value) Color: \(colors[value].description)")
        } onIncrement: {
            incrementStep()
        } onDecrement: {
            decrementStep()
        }
        .padding(5)
        .background(colors[value])
        
        
        Stepper(value: $value1,
                        in: range,
                        step: step) {
                    Text("Current: \(value1) in \(range.description) " +
                         "stepping by \(step)")
                }
                    .padding(10)
            }
}
    }


struct Stepper_View_Previews: PreviewProvider {
    static var previews: some View {
        Stepper_View()
    }
}
