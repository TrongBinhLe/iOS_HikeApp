//
//  SettingsView.swift
//  HikeApp
//
//  Created by admin on 12/09/2024.
//

import SwiftUI

struct SettingsView: View {
    // MARK: PROPERTIES
    private let alternateAppIcons: [String] = [
        "AppIcon-MagnifyingGlass",
        "AppIcon-Map",
        "AppIcon-Mushroom",
        "AppIcon-Camera",
        "AppIcon-Backpack",
        "AppIcon-Campfire"
    ]
    
    var body: some View {
        List {
            // MARK: - SECTION: HEADER
            Section {
                HStack {
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    VStack(spacing: -10) {
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        
                        Text("Editors' Choice")
                            .fontWeight(.medium)
                        
                    }
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    Spacer()
                }
                .foregroundStyle(
                    LinearGradient(colors: [
                        .customGreenDark,
                        .customGreenMedium
                    ],
                                   startPoint: .top,
                                   endPoint: .bottom
                    )
                )
                .padding(.top, 8)
                
                VStack(spacing: 8) {
                    Text("Where can you find \nperfecet track?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    Text("The hike which looks gorgeous in photos but is even better once you are actually there. The hike that you hope to do again someday. \nFinding the best day hikes in the app")
                        .font(.footnote)
                        .italic()
                    Text("Dust off the boots! It's time for a walk")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGrayMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
            } //: HEADER
            .listRowSeparator(.hidden)
            // MARK: - SECTION: ICON
            
            Section {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 8) {
                        ForEach(alternateAppIcons.indices, id: \.self) { item in
                            Button(action: {
                                UIApplication.shared.setAlternateIconName(alternateAppIcons[item]) { error in
                                    if error != nil {
                                        print("Failed request to update the app's icon: \(String(describing: error?.localizedDescription))")
                                    } else {
                                        print("Success! You have changed the app's icon to \(alternateAppIcons[item])")
                                    }
                                }
                                print("Icon \(alternateAppIcons[item]) press button Icons")
                                
                            }, label: {
                                Image("\(alternateAppIcons[item])-Preview")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80)
                                    .cornerRadius(16)
                            })
                            .buttonStyle(.borderless)
                        }
                    }
                } //: SCROLL VIEW
                .padding(.top, 12)
                
                Text("Choose your favourite app icon from the collection above.")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .font(.footnote)
                    .padding(.bottom, 12)
                
            } header: {
                Text("Alternate Icons")
            } //: SECTION
            .listRowSeparator(.hidden)
            
            // MARK: - SECTION: ABOUT
            
            Section {
                // 1.Basic labeled Content
                //                LabeledContent("Application", value: "Hike")
                
                // 2.Advanced Labeled Content
                CustomeListRowView(rowLabel: "Application", rowIcon: "apps.iphone", rowContent: "HIKE", rowTintcolor: .blue)
                CustomeListRowView(rowLabel: "Compatability", rowIcon: "info.circle", rowContent: "iOS, iPadOS", rowTintcolor: .red)
                CustomeListRowView(rowLabel: "Technology", rowIcon: "swift", rowContent: "Swift", rowTintcolor: .orange)
                CustomeListRowView(rowLabel: "Version", rowIcon: "gear", rowContent: "1.0", rowTintcolor: .purple)
                CustomeListRowView(rowLabel: "Developer", rowIcon: "ellipsis.curlybraces", rowContent: "John Doe", rowTintcolor: .mint)
                CustomeListRowView(rowLabel: "Designer", rowIcon: "paintpalette", rowContent: "Robert Petras", rowTintcolor: .pink)
                CustomeListRowView(rowLabel: "Website", rowIcon: "globe", rowTintcolor: .indigo, rowLinkLabel: "Credo Acedemy", rowLinkDestination: "https://credo.academy")
                
            } header: {
                Text("ABOUT THE APP")
            } footer: {
                HStack{
                    Spacer()
                    Text("Coppyright © All right reserved")
                    Spacer()
                }
                .padding(.vertical, 8)
            }
        } //: LIST
        
    }
}

#Preview {
    SettingsView()
}
