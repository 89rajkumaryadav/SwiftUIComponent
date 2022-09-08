//
//  Text_View.swift
//  SwiftUIComponent
//
//  Created by Rajkumar Yadav on 9/8/22.
//

import SwiftUI

struct Text_View: View {
    var body: some View {
        ScrollView{
            VStack(alignment: .leading, spacing: 50){
                Text("Stay Hungry. Stay Foolish.")
                    .fontWeight(.bold)
                    .font(.title)
                //-----------------
                Text("Stay Hungry. Stay Foolish.")
                    .font(.system(.title, design: .rounded))
                    .font(.system(size: 20))
                    .foregroundColor(.green)

                //---------------
                
                Text("Your time is limited, so don’t waste it living someone else’s life. Don’t be trapped by dogma—which is living with the results of other people’s thinking. Don’t let the noise of others’ opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition.")
                    .fontWeight(.bold)
                    .font(.title)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .lineLimit(3)
                    .truncationMode(.head)
                
                
                //---------
                Text("Your time is limited, so don’t waste it living someone else’s life. Don’t be trapped by dogma—which is living with the results of other people’s thinking. Don’t let the noise of others’ opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition.")
                    .shadow(color: .gray, radius: 2, x: 10, y: 10)


                ///-------------
                 Text("Stay Hungry. Stay Foolish by dogma—which is living with the results of other people’s thinking. Don’t let the noise of others’ opinions drown out your own inner voice. And most impor.")
                    .lineSpacing(30)
                    //.rotationEffect(.degrees(15))
                    .rotationEffect(.degrees(20), anchor: UnitPoint(x:0.2, y: 0))
                    .rotation3DEffect(.degrees(60), axis: (x: 1, y: 0, z: 0.3))



                

            }
        }
    }
}

struct Text_View_Previews: PreviewProvider {
    static var previews: some View {
        Text_View()
    }
}
