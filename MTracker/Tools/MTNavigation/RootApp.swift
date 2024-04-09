//
//  RootApp.swift
//  MTracker
//
//  Created by Bakdaulet on 09.04.2024.
//

import SwiftUI

public struct RootApp<V: View>: View {
    
    private let view: V
    
    public init(view: V) {
        self.view = view
    }
    
    public var body: some View {
        view
    }
    
}
