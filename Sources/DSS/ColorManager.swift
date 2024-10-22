//
//  ColorManager.swift
//
//  Created by Abhishek B on 2024-05-18.
//

import Foundation
import SwiftUI

@MainActor
public class ColorManager: ObservableObject {
    static let shared = ColorManager()

    @Published private(set) var colors: [AppColors: Color] = [:]

    private init() {
        fetchFrameColors()
    }

    private func fetchFrameColors() {
        FigmaAPIManager.shared.$colors
            .receive(on: RunLoop.main)
            .assign(to: &$colors)
    }
}

// MARK: - Extensions
public extension ColorManager {
    static var darkTextColor: Color {
        shared.colors[.darkText] ?? Color.black
    }
    static var lightTextColor: Color {
        shared.colors[.lightText] ?? Color.white
    }
    static var subtitleColor: Color {
        shared.colors[.subtitle] ?? Color.gray
    }
    static var selectedColor: Color {
        shared.colors[.selected] ?? Color.orange
    }
    static var positiveColor: Color {
        shared.colors[.positive] ?? Color.green
    }
    static var negativeColor: Color {
        shared.colors[.negative] ?? Color.red
    }
    static var backgroundColor: Color {
        shared.colors[.background] ?? Color.blue
    }
}
