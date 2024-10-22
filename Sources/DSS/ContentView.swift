//
//  ContentView.swift
//
//  Created by Abhishek B on 2024-05-18.
//

import Foundation
import SwiftUI

struct ContentView: View {
    @StateObject private var textStyleManager = TextStyleManager.shared

    var body: some View {
        ScrollView {
            StyledTextView(textStyle: .title1, text: "Title 1")
            StyledTextView(textStyle: .title2, text: "Title 2")
            StyledTextView(textStyle: .subtitle1, text: "Subtitle 1")
            StyledTextView(textStyle: .footer1, text: "Footer 1")
            StyledTextView(textStyle: .headline1, text: "Headline 1")
            StyledTextView(textStyle: .headline2, text: "Headline 2")
            // Add more StyledTextViews as needed

            // Color example
            RectangleView(color: ColorManager.darkTextColor)
            Text("Dark Text")
                .foregroundColor(ColorManager.darkTextColor)
            RectangleView(color: ColorManager.lightTextColor)
            Text("Light Text")
                .foregroundColor(ColorManager.lightTextColor)
                .background(.blue)

            RectangleView(color: ColorManager.subtitleColor)
            Text("Subtitle")
                .foregroundColor(ColorManager.subtitleColor)
            RectangleView(color: ColorManager.selectedColor)
            Text("Selected")
                .foregroundColor(ColorManager.selectedColor)
            RectangleView(color: ColorManager.positiveColor)
            Text("Positive")
                .foregroundColor(ColorManager.positiveColor)
            RectangleView(color: ColorManager.negativeColor)
            Text("Negative")
                .foregroundColor(ColorManager.negativeColor)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
