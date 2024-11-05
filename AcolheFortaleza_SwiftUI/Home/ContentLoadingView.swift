//
//  ContentLoadingView.swift
//  AcolheFortaleza_SwiftUI
//
//  Created by Larissa Martins Correa on 30/10/24.
//


import SwiftUI

struct ContentLoadingView: View {
    @State private var isLoading: Bool = true
    @State private var rotation: Double = 0

    var body: some View {
        ZStack {
            // Fundo amarelo que preenche toda a tela
            LinearGradient(
                gradient: Gradient(colors: [Color.yellowSecondary, Color.yellowPrimary.opacity(0.9)]),
                startPoint: .top,
                endPoint: .bottom
            ).edgesIgnoringSafeArea(.all)

            VStack {
                // O texto centralizado
                VStack(spacing: 8) {
                    Text("Bem-vindo(a/e) ao")
                        .textCase(.uppercase)
                        .fontDesign(.serif)
                        .fontWeight(.light)
                        .foregroundColor(.white)
                        .font(.title3)
                    Text("Acolhe")
                        .font(.system(size: 48, weight: .bold, design: .serif))
                        .minimumScaleFactor(0.4)
                        .fontDesign(.serif)
                        .fontWeight(.bold)
                        .font(.title)
                        .foregroundColor(.white)
                    
                    Text("Fortaleza")
                        .textCase(.uppercase)
                        .fontDesign(.serif)
                        .fontWeight(.semibold)
                        .padding(.bottom, 80)
                        .foregroundColor(.white)
                        .font(.title3)
                    
                    Text("Acessar")
                        .frame(width: 150, height: 50)
                        .background(.white)
                        .cornerRadius(150)
                        .foregroundColor(.yellowSecondary)
                        .fontWeight(.semibold)
                        .textCase(.uppercase)
                        .padding(.top, 40)
                }
                .padding()
                .background(Color.clear)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                
                Spacer() // Para empurrar a logo para baixo
                
                // Bolinha de loading com transição de opacidade
                if isLoading {
                    Circle()
                        .stroke(Color.white, lineWidth: 4)
                        .frame(width: 30, height: 30)
                        .rotationEffect(.degrees(rotation))
                        .onAppear {
                            withAnimation(Animation.linear(duration: 1).repeatForever(autoreverses: false)) {
                                rotation = 360
                            }
                        }
                        .padding(.bottom, 20)
                        .transition(.opacity) // Adiciona uma transição suave
                }
                
                // Logo da Prefeitura
                Image(.logoPref)
                    .padding(.bottom, 20) // Espaçamento na parte inferior da tela
            }
        }
        .onAppear {
            // Simula o tempo de carregamento
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                withAnimation {
                    isLoading = false
                }
            }
        }
    }
}

#Preview {
    ContentLoadingView()
}
