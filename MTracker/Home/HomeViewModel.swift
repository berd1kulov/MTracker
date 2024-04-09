//
//  HomeViewModel.swift
//  MTracker
//
//  Created by Bakdaulet on 09.04.2024.
//

import UIKit
import BottomSheet

class HomeViewModel: ObservableObject {
    @Published var isPresented = true
    @Published var selectedDetent: BottomSheet.PresentationDetent = .height(UIScreen.screenHeight - 384)
}
