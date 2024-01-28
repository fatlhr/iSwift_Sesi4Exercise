//
//  CustomDotIndicatorView.swift
//  Sesi4Exercise
//
//  Created by Fatiha Rahmat on 28/01/24.
//

import SwiftUI

struct CustomDotIndicatorView: View {
    let count: Int
    @Binding var selectedTab: Int
    
    var body: some View {
        HStack {
            ForEach(0..<count, id:\.self) { tab in
                Circle()
                    .fill(tab == selectedTab ? Color(UIColor(.white)) : Color(UIColor(.gray)))
                    .frame(width: 10, height: 10)
                    .padding(.horizontal, 4)
                    .onTapGesture {
                        
                        print("Select Tab: \(tab)")
                        selectedTab = tab
                        
                    }
                    .onDrag({ /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Item Provider@*/NSItemProvider()/*@END_MENU_TOKEN@*/ })
            }
        }
        .animation(.easeOut, value: selectedTab)
        
    }
}

//#Preview {
//    @State var selectedTabPrev = 0
//    CustomDotIndicatorView(count: 5, selectedTab: $selectedTabPrev)
//}
