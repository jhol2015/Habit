//
//  HabitApp.swift
//  Habit
//
//  Created by Jhol Moreira on 30/10/22.
//

import SwiftUI

@main
struct HabitApp: App {
    var body: some Scene {
        WindowGroup {
            SplashView(viewModel: SplashViewModel())
        }
    }
}
