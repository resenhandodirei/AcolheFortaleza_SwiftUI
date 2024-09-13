//
//  HomeUIView.swift
//  AcolheFortaleza_SwiftUI
//
//  Created by Larissa Martins Correa on 12/09/24.
//

import SwiftUI

struct HomeUIView: View {
    var body: some View {
        VStack(spacing: 0) {
            // Cabeçalho fixo
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text("Acolhe")
                        .font(.system(size: 32, weight: .bold, design: .serif))
                        .minimumScaleFactor(0.5)
                        .foregroundColor(.yellowPrimary)
                    
                    Text("Fortaleza")
                        .textCase(.uppercase)
                        .font(.system(size: 24, weight: .semibold, design: .serif))
                        .foregroundColor(.yellowPrimary)
                }
                
                Spacer()
                
                Image(systemName: "line.3.horizontal")
                    .font(.system(size: 24))
                    .foregroundColor(.yellowPrimary)
            }
            .padding()
            .background(Color.white) // Fundo branco para o cabeçalho
            .frame(maxWidth: .infinity, alignment: .top) // Garante que o cabeçalho se estenda por toda a largura
            
            // Conteúdo principal
            ScrollView {
                VStack(alignment: .leading, spacing: 10) {
                    Text("Fique por dentro!")
                        .font(.title3)
                        .foregroundStyle(.yellowPrimary)
                        .fontWeight(.semibold)
                        .textCase(.uppercase)
                    
                    ScrollView(.horizontal) {
                        HStack(spacing: 20) {
                            ForEach(0..<10) {
                                Text("Item \($0)")
                                    .foregroundStyle(.white)
                                    .font(.largeTitle)
                                    .frame(width: 200, height: 200)
                                    .background(.yellowSecondary)
                                    .cornerRadius(15)
                            
                            }
                        }
                    }
                }
                .padding(.horizontal) // Adiciona padding horizontal para o conteúdo principal
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Serviços")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundStyle(.yellowPrimary)
                        .textCase(.uppercase)
                    
                    ScrollView(.horizontal) {
                        HStack(spacing: 20) {
                            ForEach(0..<10) {
                                Text("Item \($0)")
                                    .foregroundStyle(.white)
                                    .font(.largeTitle)
                                    .frame(width: 200, height: 400)
                                    .background(.yellowSecondary)
                                    .cornerRadius(15)
                                    
                            }
                        }
                    }
                }
                .padding(.top, 15)
                .padding(.horizontal) // Adiciona padding horizontal para o conteúdo principal
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Com o que podemos te ajudar?")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundStyle(.yellowPrimary)
                        .textCase(.uppercase)
                    
                    ScrollView(.horizontal) {
                        HStack(spacing: 20) {
                            ForEach(0..<10) {
                                Text("Item \($0)")
                                    .foregroundStyle(.white)
                                    .font(.largeTitle)
                                    .frame(width: 250, height: 100)
                                    .background(.yellowSecondary)
                                    .cornerRadius(15)
                                    
                            }
                        }
                    }
                }
                .padding(.top, 15)
                .padding(.horizontal) // Adiciona padding horizontal para o conteúdo principal
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Perto de você")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundStyle(.yellowPrimary)
                        .textCase(.uppercase)
                    
                    ScrollView(.horizontal) {
                        HStack(spacing: 20) {
                            ForEach(0..<10) {
                                Text("Item \($0)")
                                    .foregroundStyle(.white)
                                    .font(.largeTitle)
                                    .frame(width: 200, height: 400)
                                    .background(.yellowSecondary)
                                    .cornerRadius(15)
                                    
                            }
                        }
                    }
                }
                .padding(.top, 15)
                .padding(.horizontal) // Adiciona padding horizontal para o conteúdo principal
                
                
            }
            .padding(.top, 10) // Ajusta o padding superior para garantir que o conteúdo não fique oculto atrás do cabeçalho
            
            
        }
        .edgesIgnoringSafeArea(.top) // Ignora a área segura no topo para que o cabeçalho fique no topo da tela
        // Rodapé
        GeometryReader { geometry in
            VStack {
                Text("Siga a Prefeitura de Fortaleza nas redes sociais")
                    .font(.footnote)
                    .foregroundColor(.white)
            }
            .padding(.top, 20) // Adiciona padding superior para o rodapé
            .frame(width: geometry.size.width, height: 50) // Garante que o rodapé ocupe a largura completa
            .background(Color.yellowPrimary) // Fundo amarelo para o rodapé
        }
        .frame(height: 50) // Ajusta a altura do rodapé
    
    }
}

#Preview {
    HomeUIView()
}

