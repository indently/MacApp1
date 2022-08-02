//
//  ViewExtensions.swift
//  MacOne
//
//  Created by Federico on 02/08/2022.
//

import Foundation
import SwiftUI

extension View {
    func windowFrame() -> some View {
        self
            .frame(minWidth: 400,
                   maxWidth: 400,
                   minHeight: 500,
                   maxHeight: .infinity)
    }
}
