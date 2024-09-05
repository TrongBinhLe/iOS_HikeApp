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
            VStack {
                // MARK: - HEADER
                VStack(alignment: .leading ) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(LinearGradient(
                                colors: [.customGrayLight,
                                        .customGrayMedium],
                                startPoint: .top,
                                endPoint: .bottom))
                        
                        Spacer()
                        
                        Button(action: {
                            // ACTION: show a sheet
                            print("Button was pressed")
                        }, label: {
                            CustomButtonView()
                        })
                    }
                    
                    Text("Fun and enjoyable outdoor activitiy for friends and family")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                } //: HEADER
                .padding([.leading, .trailing], 30)
                
                // MARK: - MAIN CONTENT
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
                }// Card View
                
                // MARK: - FOOTER
            } // VStack
        }.frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
