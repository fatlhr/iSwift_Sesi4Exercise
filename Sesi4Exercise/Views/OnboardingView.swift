//
//  OnboardingView.swift
//  Sesi4Exercise
//
//  Created by Fatiha Rahmat on 28/01/24.
//

import SwiftUI

struct OnboardingView: View {
    
    @State private var selectedTab = 0
    
   
    var data: OnboardingModel
    
    var body: some View {
        ZStack{
            Image(data.image).resizable()
            
            
            GeometryReader { proxy in
                VStack(alignment: .center) {
                    Spacer().frame(height: proxy.size.height * 0.65)
                    Text(data.title)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .foregroundStyle(.white)
                        .lineLimit(2)
                        .padding(.bottom, 8)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text(data.subtitle)
                        .font(.system(size: 22))
                        .fontWeight(.medium)
                        .multilineTextAlignment(.leading)
                        .foregroundStyle(.white)
                        .lineLimit(4, reservesSpace: true)
                        .truncationMode(.tail)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding(.horizontal, 36.0)
                
            }.ignoresSafeArea()
            
            
        }.ignoresSafeArea()
        
    }
}

#Preview {
    OnboardingView(data: OnboardingModel.data[5])
}
