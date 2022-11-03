//
//  SignInView.swift
//  Habit
//
//  Created by Jhol Moreira on 31/10/22.
//

import SwiftUI

struct SignInView: View {
    @ObservedObject var viewModel: SignInViewModel
    
    @State var email = ""
    @State var password = ""
    @State var action: Int? = 0
    @State var navigationHidden = true
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    Spacer(minLength: 70)
                    VStack(alignment: .center, spacing: 8) {
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .padding(.horizontal, 20)
                        
                        Text("Login")
                            .foregroundColor(.orange)
                            .font(Font.system(.title).bold())
                            .padding(.bottom, 8)
                        
                        numberField
                        passwordField
                        enterButton
                        registerLink
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding(.horizontal, 32)
            .background(Color.white)
            .navigationBarTitle("Login", displayMode: .inline)
            .navigationBarHidden(navigationHidden)
        }
    }
}
        

extension SignInView {
    var numberField: some View {
        TextField("", text: $email)
            .border(Color.black)
            .padding()
    }
}

extension SignInView {
    var passwordField: some View {
        SecureField("", text: $password)
            .border(Color.black)
            .padding()
    }
}

extension SignInView {
    var enterButton: some View {
        Button("Entrar") {
            //acao do click
        }
    }
}

extension SignInView {
    var registerLink: some View {
        VStack {
            Text("Ainda nao possui um login ativo?")
                .foregroundColor(.gray)
                .padding(.top, 48)
            
            ZStack {
                NavigationLink(
                destination: Text("Tela de Cadastro"),
                tag: 1,
                selection: $action,
                label: { EmptyView() })
                
                Button("Realize seu cadastro"){
                    self.action = 1
                }
            }
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = SignInViewModel()
        SignInView(viewModel: viewModel)
    }
}
