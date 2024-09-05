//
//  CustomBackgroundView.swift
//  HikeApp
//
//  Created by admin on 05/09/2024.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            //MARK: - 3. DEPTH
            Color.customGreenDark
                .cornerRadius(40)
                .offset(y: 28)
            
            //MARK: - 2. LIGHT
            Color.customGreenLight
                .cornerRadius(40)
                .offset(y: 10)
                .opacity(0.83)
                
            //MARK: - 1.SURFACE
                
            LinearGradient(
                colors: [
                    .customGreenLight,
                    .customGreenMedium],
                startPoint: .top,
                endPoint: .bottom
            )
            .cornerRadius(40)
        }
    }
}

#Preview {
    CustomBackgroundView()
        .padding()
}
