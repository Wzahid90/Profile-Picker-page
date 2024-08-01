//
//  Extension.swift
//  Profile Picker page
//
//  Created by DPI Student 054 on 7/16/24.
//




// PreviewContent group: Extension file

import Foundation
import SwiftUI

// Custom modifier to call this one-liner instead of adding three modifiers every time we create a title Text.
extension Text {
    func lilacTitle() -> some View {
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color("AccentColor"))
    }
}

