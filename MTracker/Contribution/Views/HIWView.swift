//
//  HIWView.swift
//  MTracker
//
//  Created by Bakdaulet on 09.04.2024.
//

import SwiftUI

struct HIWView: View {
    var didTap: () -> Void = {}
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Как это работает?")
                        .font(.system(size: 18, weight: .bold))
                        .foregroundColor(.black)
                        .padding(.bottom, 8)
                    Text("Спасай планету и получай бонусы")
                        .font(.system(size: 14))
                        .foregroundColor(.gray)
                }
                
                VStack {
                    Image("icontree")
                }
            }
            
            Button(action: {
                didTap()
            }, label: {
                HStack {
                    Spacer()
                    Text("Подробнее")
                        .font(.system(size: 18, weight: .semibold))
                        .foregroundColor(.black)
                        .padding(.vertical, 14)
                    Spacer()
                }
                .background(Color("base200"))
                .clipShape(RoundedRectangle(cornerRadius: 16.0))
                .padding(.horizontal, 16)
                .padding(.bottom, 16)
            })
        }
        .background(Color("base50"))
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}

#Preview {
    HIWView()
}
