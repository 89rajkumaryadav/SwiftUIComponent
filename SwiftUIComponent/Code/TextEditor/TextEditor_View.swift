//
//  TextEditor_View.swift
//  SwiftUIComponent
//
//  Created by Rajkumar Yadav on 9/7/22.
//

import SwiftUI

struct TextEditor_View: View {
    @State private var inputText = ""
    @State private var wordCount: Int = 0

    var body: some View {
        ZStack(alignment: .topTrailing) {
            TextEditor(text: $inputText)
                .font(.body)
                .padding()
                .padding(.top, 20)
                .foregroundColor(.red)
                .background(.secondary)
                .onChange(of: inputText) { value in
                    let words = inputText.split { $0 == " " || $0.isNewline }
                    self.wordCount = words.count
                }

            Text("\(wordCount) words")
                .font(.headline)
                .foregroundColor(.secondary)
                .padding(.trailing)
        }
    }
}
struct TextEditor_View_Previews: PreviewProvider {
    static var previews: some View {
        TextEditor_View()
    }
}
