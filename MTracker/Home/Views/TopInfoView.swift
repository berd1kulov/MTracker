//
//  TopInfoView.swift
//  MTracker
//
//  Created by Bakdaulet on 09.04.2024.
//

import SwiftUI

struct TopInfoView: View {
    var body: some View {
        
        VStack(spacing: 12){
            ZStack(alignment: .bottom) {
                VStack {
                    HStack(spacing: 92) {
                        Image("bottle")
                            .resizable()
                            .frame(width: 82, height: 97)
                        Image("iron_bottle")
                            .resizable()
                            .frame(width: 82, height: 97)
                    }
                    Spacer()
                }.frame(height: 151)
                
                HStack {
                    VStack {
                        Text("15")
                            .font(.system(size: 28, weight: .bold))
                            .foregroundStyle(Color("base50"))
                        Text("Пластиковые")
                            .frame(maxWidth: .infinity)
                            .font(.system(size: 13))
                            .foregroundStyle(Color("base100"))
                    }
                    
                    Spacer()
                    Divider()
                        .frame(width: 1, height: 47)
                        .background(Color("base50"))
                    Spacer()
                    
                    VStack {
                        Text("10")
                            .font(.system(size: 28, weight: .bold))
                            .foregroundStyle(Color("base50"))
                        Text("Алюминиевые")
                            .frame(maxWidth: .infinity)
                            .font(.system(size: 13))
                            .foregroundStyle(Color("base100"))
                    }
                }
                .padding()
                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16.0))
            }
            
            LevelInfoView()
        }
    }
}

struct LevelInfoView: View {
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text("Твой уровень")
                        .font(.system(size: 13))
                        .foregroundStyle(Color("base100"))
                    Text("Эконовичок")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundStyle(Color("base50"))
                }
                Spacer()
                HStack {
                    Text("50,00 ₸")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundStyle(Color("base50"))
                    Image("arrow_right")
                        .foregroundStyle(Color("base50"))
                }
            }
            ProgressView(value: 0.6)
                .progressViewStyle(.linear)
                .tint(Color("base50"))
                .frame(height: 8)
        }
        .padding()
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16.0))
    }
}

#Preview {
    TopInfoView()
}
