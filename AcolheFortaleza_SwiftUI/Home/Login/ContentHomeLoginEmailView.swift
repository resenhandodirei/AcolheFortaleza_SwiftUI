//
//  ContentHomeLoginEmailView.swift
//  AcolheFortaleza_SwiftUI
//
//  Created by Larissa Martins Correa on 31/10/24.
//

import SwiftUI

struct ContentHomeLoginEmailView: View {
    @State private var email: String = ""
    @State private var password: String = ""


    var body: some View {
        ZStack {
            
            // Fundo com gradiente amarelo
            LinearGradient(
                gradient: Gradient(colors: [Color.yellowSecondary, Color.yellowPrimary.opacity(0.9)]),
                startPoint: .top,
                endPoint: .bottom
            ).edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                
                // Retângulo claro com conteúdo
                VStack(spacing: 40) {
                    
                    // Título "Acolhe Fortaleza"
                    VStack(spacing: 8) {
                        Text("Acolhe")
                            .font(.system(size: 48, weight: .bold, design: .serif))
                            .foregroundColor(.yellowSecondary)
                        
                        Text("Fortaleza")
                            .textCase(.uppercase)
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundColor(.yellowSecondary)
                    }
                    
                    // Campo de e-mail e botão de login
                    VStack(spacing: 16) {
                        TextField("Insira seu e-mail", text: $email)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.white) // Campo de texto
                            .cornerRadius(10)
                            .shadow(color: .black.opacity(0.1), radius: 4, x: 0, y: 2)
                            .keyboardType(.emailAddress)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                        
                        TextField("Insira sua senha", text: $password)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(color: .black.opacity(0.1), radius: 4, x: 0, y: 2)
                            .keyboardType(.emailAddress)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                        
                        // Texto para "Fazer login"
                        Text("Fazer login")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .frame(width: 200, height: 50)
                            .background(Color.yellowSecondary)
                            .foregroundColor(.white)
                            .cornerRadius(8.0)
                            .padding(.top, 20)
                            .textCase(.lowercase)
                    }
                }
                .padding()
                .frame(width: 350) // Largura do retângulo claro
                .background(Color.white.opacity(0.8)) // Tonalidade do retângulo
                .cornerRadius(16)
                .shadow(radius: 10)
                
                Spacer()
            }
            .padding(.horizontal, 32)
        }
    }
}

#Preview {
    ContentHomeLoginEmailView()
}

