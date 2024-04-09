//
//  MTrackerApp.swift
//  MTracker
//
//  Created by Bakdaulet on 09.04.2024.
//

import SwiftUI

@main
struct MTrackerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                RootApp(view: HomeView()) 
                    .onAppear {
                        configure()
                    }
            }
        }
    }
    
    func configure() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .darkGray
        UIPageControl.appearance().pageIndicatorTintColor = .gray
    }
}
