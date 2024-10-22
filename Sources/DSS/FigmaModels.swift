//
//  Models.swift
//
//  Created by Abhishek B on 2024-05-18.
//

import Foundation
import SwiftUI

// MARK: - Models and Enums
struct FigmaNodeResponse: Decodable {
    let nodes: [String: FigmaNodeWrapper]
}

struct FigmaNodeWrapper: Decodable {
    let document: FigmaNode
}

struct FigmaNode: Decodable {
    let id: String
    let name: String
    let type: String
    let children: [FigmaNode]?
    let styles: [String: String]?
    let style: FigmaTextStyle?
    let fills: [FigmaFill]?
}

struct FigmaTextStyle: Decodable {
    let fontFamily: String?
    let fontPostScriptName: String?
    let fontSize: Double?
    let fontWeight: FontWeight?
    let textAlignHorizontal: String?
    let textAlignVertical: String?
    let letterSpacing: Double?
    let lineHeightPx: Double?
    let lineHeightPercent: Double?
    let lineHeightPercentFontSize: Double?
    let lineHeightUnit: String?
}

struct FigmaFill: Decodable {
    let blendMode: String
    let type: String
    let color: FigmaColor?
}

struct FigmaColor: Decodable {
    let r: CGFloat
    let g: CGFloat
    let b: CGFloat
    let a: CGFloat
}

enum FontWeight: Decodable {
    case number(Int)
    case string(String)

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(Int.self) {
            self = .number(value)
        } else if let value = try? container.decode(String.self) {
            self = .string(value)
        } else {
            throw DecodingError.typeMismatch(FontWeight.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Expected to decode Int or String"))
        }
    }
}

public enum TextStyle: String, CaseIterable {
    case title1, title2, subtitle1, footer1, headline1, headline2
}

enum AppColors: String, CaseIterable {
    case darkText = "DarkText"
    case lightText = "LightText"
    case subtitle = "Subtitle"
    case selected = "Selected"
    case positive = "Positive"
    case negative = "Negative"
    case background = "Background"
}
