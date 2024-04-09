//
//  DetailedView.swift
//  MTracker
//
//  Created by Bakdaulet on 09.04.2024.
//

import SwiftUI

struct DetailedView: View {
    var didDetailedTapped: () -> Void = {}
    
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                InfoView()
                MapInfoView()
                HIWView {
                    didDetailedTapped()
                }
            }
            .padding(16)
        }.background(Color("base100"))
    }
}

#Preview {
    DetailedView()
}
