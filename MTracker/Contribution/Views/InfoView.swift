//
//  InfoView.swift
//  MTracker
//
//  Created by Bakdaulet on 09.04.2024.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        VStack(spacing: 14) {
            Text("Ваш вклад по спасению планеты")
            TabView {
                InfoTabView()
                InfoTabView()
            }
            .frame(minHeight: 140)
            .tabViewStyle(.page(indexDisplayMode: .always))
        }
        .padding(.init(top: 16, leading: 16, bottom: 0, trailing: 16))
        .background(Color("base50"))
        .clipShape(RoundedRectangle(cornerRadius: 16.0))
    }
}

struct InfoTabView: View {
    let sampleInfos = ["info1", "info2", "info3"]
    
    var body: some View {
        HStack() {
            ForEach(sampleInfos, id: \.self) { info in
                VStack {
                    Image(info)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 56, height: 56)
                        .clipShape(RoundedRectangle(cornerRadius: 16.0))
                        .padding(.vertical, 8)
                    
                    Text(info)
                        .font(.system(size: 16, weight: .semibold))
                    
                    Text(info)
                        .font(.system(size: 11, weight: .regular))
                    Spacer(minLength: 24)
                }
                if info != sampleInfos.last {
                    Spacer()
                }
            }
        }
        .padding(.horizontal, 28)
    }
}

#Preview {
    InfoView()
}
