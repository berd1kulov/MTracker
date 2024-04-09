//
//  HomeView.swift
//  MTracker
//
//  Created by Bakdaulet on 09.04.2024.
//

import SwiftUI
import BottomSheet

struct HomeView: Navigator {
    
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        ZStack {
            Rectangle().fill(.clear)
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: [
                            Color("brand"),
                            Color("brand").opacity(0.8),
                            Color("brand").opacity(0.6)
                        ]),
                        startPoint: .bottomLeading,
                        endPoint: .topTrailing
                    )
                )
            VStack {
                TopInfoView()
                Spacer()
            }.padding(16)
        }
        .sheetPlus(isPresented: $viewModel.isPresented, main: {
            DetailedView {
                navigator.dismiss()
                navigator.pushView {
                    Text("Detailed")
                }
            }
            .presentationDetentsPlus(
                [.height(UIScreen.screenHeight - 384), .large],
                selection: $viewModel.selectedDetent
            )
        })
        .navigationTitle("Фандоматы")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    HomeView()
}
