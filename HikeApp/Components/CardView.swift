//
//  CardView.swift
//  HikeApp
//
//  Created by admin on 05/09/2024.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            CustomBackgroundView()
            ZStack {
                Circle()
                    .fill(
                        LinearGradient(
                            colors: [
                                Color("ColorIndigoMedium"),
                                Color("ColorSalmonLight")],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing)
                    ).frame(width: 256, height: 256)
                Image("image-2")
                    .resizable()
                    .scaledToFit()
            } // Card View
        }.frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
