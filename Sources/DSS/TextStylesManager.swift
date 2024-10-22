//
//  TextStylesManager.swift
//
//  Created by Abhishek B on 2024-05-18.
//

import Foundation
import SwiftUI

@MainActor
public class TextStyleManager: ObservableObject {
    static let shared = TextStyleManager()

    @Published private(set) var textStyles: [TextStyle: Font] = [:]

    private init() {
        fetchTextStyles()
    }

    private func fetchTextStyles() {
        FigmaAPIManager.shared.$textStyles
            .receive(on: RunLoop.main)
            .assign(to: &$textStyles)
    }
}
