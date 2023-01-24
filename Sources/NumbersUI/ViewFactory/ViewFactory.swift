//
//  File.swift
//  
//
//  Created by Michel Goñi on 23/1/23.
//


import NumbersInjector
import SwiftUI

public struct ViewFactory {

    var injector: NumbersInjector { .shared }
    init() {}
}

@available(iOS 13.0, *)
public extension ViewFactory {

    func make<Content: View>(@ViewBuilder content: @escaping () -> Content) -> some View {
        LazyView(build: content)
    }
}
