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
                    .scaleEffect(tab == selectedTab ? 1.0 : 1.0)
                    .frame(width: 8, height: 8)
                    .padding(.horizontal, 4)
                    .onTapGesture {
                        selectedTab = tab
                    }
                    .onDrag({ /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Item Provider@*/NSItemProvider()/*@END_MENU_TOKEN@*/ })
            }
        }
        .animation(.easeOut, value: selectedTab)
    }
}

//#Preview {
//    @State var selectedTab = 0
//    CustomDotIndicatorView(count: 5, selectedTab: $selectedTab)
//}
