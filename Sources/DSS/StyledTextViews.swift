//
//  StyledTextViews.swift
//
//  Created by Abhishek B on 2024-05-18.
//

import Foundation
import SwiftUI

public struct StyledTextView: View {
    public let textStyle: TextStyle
    public let text: String

    @ObservedObject var textStyleManager = TextStyleManager.shared

    public init(textStyle: TextStyle, text: String) {
        self.textStyle = textStyle
        self.text = text
    }

    public var body: some View {
        if textStyleManager.textStyles[textStyle] != nil {
            Text(text)
        } else {
            Text(text)
                .foregroundColor(.gray)
        }
    }
}
