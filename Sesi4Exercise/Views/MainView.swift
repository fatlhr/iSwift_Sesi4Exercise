//
//  ContentView.swift
//  Sesi4Exercise
//
//  Created by Fatiha Rahmat on 28/01/24.
//

import SwiftUI

struct MainView: View {
    @State private var selectedTab = 0
    
    private let tabs : [OnboardingModel] = OnboardingModel.data
    private let dotIndicator = UIPageControl.appearance()
    
    
    var body: some View {
        
        GeometryReader{
            proxy in ZStack(alignment: .bottom){
                let bottomPadding = proxy.size.height * 0.05
                
                TabView(selection: $selectedTab){
                    ForEach(tabs){
                        tab in Group {
                            OnboardingView(data: tab)
                        }.tag(tab.tag)
                    }
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
                .animation(.easeIn, value: selectedTab)
                .ignoresSafeArea()
                
                CustomDotIndicatorView(count: tabs.count, selectedTab: $selectedTab)
                    .padding(.bottom, bottomPadding)
            }
        }
        
        .ignoresSafeArea()
    }
}

#Preview {
    MainView()
}
