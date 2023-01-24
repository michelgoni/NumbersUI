//
//  File.swift
//  
//
//  Created by Michel Goñi on 24/1/23.
//

import SwiftUI

@available(iOS 13.0, *)
struct LazyView<Content: View>: View {
    private let build: () -> Content

    public init(@ViewBuilder build: @escaping () -> Content) {
        self.build = build
    }

    public var body: some View {
        build()
    }
}

