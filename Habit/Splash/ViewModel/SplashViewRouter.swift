//
//  SplashViewRouter.swift
//  Habit
//
//  Created by Jhol Moreira on 31/10/22.
//

import SwiftUI

enum SplashViewRouter {
    static func makeSignInView() -> some View {
        let viewModel = SignInViewModel()
        return SignInView(viewModel: viewModel)
    }
}
