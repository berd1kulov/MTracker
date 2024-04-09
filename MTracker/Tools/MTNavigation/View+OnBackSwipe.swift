//
//  View+OnBackSwipe.swift
//  MTracker
//
//  Created by Bakdaulet on 09.04.2024.
//

import SwiftUI

public extension View {
    
    func onBackSwipe(perform action: @escaping () -> Void) -> some View {
        gesture(
            DragGesture()
                .onEnded({ value in
                    if value.startLocation.x <  50 && value.translation.width >  80 {
                        action()
                    }
                })
        )
    }
    
}
