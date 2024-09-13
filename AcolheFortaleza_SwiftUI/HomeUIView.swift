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
                        .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                    
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
                    Text("serviços")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundStyle(.yellowPrimary)
                        .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                    
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
                    Text("com o que podemos te ajudar?")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundStyle(.yellowPrimary)
                        .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                    
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
                    Text("perto de você")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundStyle(.yellowPrimary)
                        .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                    
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
    }
}

#Preview {
    HomeUIView()
}
