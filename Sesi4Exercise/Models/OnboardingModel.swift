//
//  OnboardingModel.swift
//  Sesi4Exercise
//
//  Created by Fatiha Rahmat on 28/01/24.
//

import Foundation

struct OnboardingModel: Identifiable{
    var id=UUID()
    var image: String
    var title: String
    var subtitle: String
    var tag: Int
}

extension OnboardingModel {
    static let data: [OnboardingModel] = [
        OnboardingModel(
            image: "clear1",
            title: "Your Life in Lists",
            subtitle: "Clear is a colorful canvas for your thoughts, plans and goals. Here's what makse it uniquely fun and effective",
            tag: 0
        ),
        
        OnboardingModel(
            image: "clear2",
            title: "Radically Simple",
            subtitle: "Clear is a pristine a place to think, totally free of distractions or feature clutter.",
            tag: 1
        ),
        
        OnboardingModel(
            image: "clear3",
            title: "Remarkably Fluent",
            subtitle: "Clear's gesture shortcuts are intuitive and effecient. Try pinching to insert or take a screenshot to share a list.",
            tag: 2
        ),
        OnboardingModel(
            image: "clear4",
            title: "Strangely Addictive",
            subtitle: "Clear harrnesses your dopamine with satisfying siund, haptics, and collectibles that unlock as you get things done.",
            tag: 3
        ),
        OnboardingModel(
            image: "clear5",
            title: "Insane Personalizable",
            subtitle: "Mix and match uhndreds of collectibles, totally transforming\nClear to suit your style and whims.",
            tag: 4
        ),OnboardingModel(
            image: "clear6",
            title: "Trait Yourself",
            subtitle: "Because it's productive to after a job well done. Clear is 100% free to use and also a treat to shop in.\nHappy Listing!",
            tag: 5
        )
    ]
}
