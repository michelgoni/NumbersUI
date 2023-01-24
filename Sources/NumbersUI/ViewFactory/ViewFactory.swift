//
//  File.swift
//  
//
//  Created by Michel Goñi on 23/1/23.
//


import NumbersInjector
import SwiftUI

public struct ViewFactory {

    public var injector: NumbersInjector { .shared }
    public init() {}
}

@available(iOS 13.0, *)
public extension ViewFactory {

    func make<Content: View>(@ViewBuilder content: @escaping () -> Content) -> some View {
        LazyView(build: content)
    }
}
