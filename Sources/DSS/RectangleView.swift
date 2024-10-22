//
//  RectangleView.swift
//
//  Created by Abhishek B on 2024-05-18.
//

import Foundation
import SwiftUI

struct RectangleView: View {
    var color: Color

    var body: some View {
        Rectangle()
            .fill(color)
            .frame(width: 100, height: 100)
            .cornerRadius(10)
            .shadow(radius: 5)
    }
}
