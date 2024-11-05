//
//  ContentHomeLoginsView.swift
//  AcolheFortaleza_SwiftUI
//
//  Created by Larissa Martins Correa on 30/10/24.
//

import SwiftUI

struct ContentHomeLoginsView: View {
    @State private var rotation: Double = 0

    var body: some View {
        NavigationView {
            ZStack {
                
                // Fundo com gradiente
                LinearGradient(
                    gradient: Gradient(colors: [Color.yellowSecondary, Color.yellowPrimary.opacity(0.9)]),
                    startPoint: .top,
                    endPoint: .bottom
                ).edgesIgnoringSafeArea(.all)
                
                VStack {
                    
                    Spacer()
                    
                    VStack(spacing: 8) {
                        VStack {
                            Text("Acolhe")
                                .font(.system(size: 48, weight: .bold, design: .serif))
                                .minimumScaleFactor(0.4)
                                .foregroundColor(.white)
                            
                            Text("Fortaleza")
                                .textCase(.uppercase)
                                .fontDesign(.serif)
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .font(.title3)
                        }
                    }

                    // Retângulo branco com as opções de login e criar conta
                    VStack(spacing: 16) {
                        loginButton(text: "Crie uma conta com Google", imageName: "globe")
                        NavigationLink(destination: RegisterView()) {
                            loginButton(text: "Crie uma conta via e-mail ou celular", imageName: "envelope")
                        }
                        loginButton(text: "Faça seu login via Google", imageName: "person.crop.circle.badge.checkmark")
                        NavigationLink(destination: ContentHomeLoginEmailView()) {
                            loginButton(text: "Faça seu login via e-mail ou celular", imageName: "envelope.open")
                        }
                        loginButton(text: "Acesse sem criar uma conta ou fazer login", imageName: "arrow.right.circle")
                    }
                    .padding()
                    .background(Color.white.opacity(0.8))
                    .cornerRadius(16)
                    .padding(.horizontal, 32)
                    .padding(.bottom, 40)
                    
                    Spacer()
                }
            }
        }
    }
    
    // Subview para os botões de login
    @ViewBuilder
    private func loginButton(text: String, imageName: String) -> some View {
        HStack {
            Image(systemName: imageName)
                .foregroundColor(.white)
                .font(.title3)
            Text(text)
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .textCase(.lowercase)
                .font(.system(size: 16))
        }
        .frame(width: 320, height: 50)
        .background(Color.yellowSecondary)
        .cornerRadius(12)
        .shadow(color: .black.opacity(0.2), radius: 4, x: 2, y: 2)
    }
}

#Preview {
    ContentHomeLoginsView()
}

