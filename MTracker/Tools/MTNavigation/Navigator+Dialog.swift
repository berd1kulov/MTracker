//
//  Navigator+Dialog.swift
//  MTracker
//
//  Created by Bakdaulet on 09.04.2024.
//

import SwiftUI

public struct NavigatorCustomDialog<DialogContent: View>: ViewModifier {
    private let dialogContent: () -> DialogContent
    
    public init(
        dialogContent: @escaping () -> DialogContent) {
            self.dialogContent = dialogContent
        }
    
    public func body(content: Content) -> some View {
        ZStack {
            content
            Rectangle().foregroundColor(Color.black.opacity(0.6))
            ZStack {
                dialogContent()
            }
            .padding(20)
        }
    }
}

internal extension View {
    func presentAsNavigatorDialog<DialogContent: View>(
        @ViewBuilder dialogContent: @escaping () -> DialogContent
    ) -> some View {
        modifier(NavigatorCustomDialog(dialogContent: dialogContent))
    }
}
