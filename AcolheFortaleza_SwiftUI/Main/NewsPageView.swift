//
//  NewsPageView.swift
//  AcolheFortaleza_SwiftUI
//
//  Created by Larissa Martins Correa on 31/10/24.
//

import SwiftUI

struct NewsPageView: View {
    let totalPages = 5 // Exemplo do número total de páginas

    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                // Cabeçalho
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [Color.yellowPrimary, Color.yellowSecondary]),
                                   startPoint: .top,
                                   endPoint: .bottom)
                        .edgesIgnoringSafeArea(.top)
                    
                    HStack {
                        Image(systemName: "chevron.backward")
                            .resizable()
                            .frame(width: 24, height: 32)
                            .foregroundColor(.white)
                            .padding(.horizontal, 16)
                        
                        Image(systemName: "newspaper.fill")
                            .resizable()
                            .frame(width: 34, height: 42)
                            .foregroundColor(.white)
                        
                        VStack(alignment: .leading) {
                            Text("Notícias")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.top, 20)
                                .textCase(.uppercase)
                            
                            Text("Fique por dentro das novidades e atualizações.")
                                .font(.subheadline)
                                .foregroundColor(.white)
                                .padding(.bottom, 20)
                        }
                    }
                }
                .frame(height: 120)
                
                Spacer()
                
                // Conteúdo principal
                ScrollView {
                    VStack(spacing: 16) {
                        ForEach(0..<4) { index in
                            // Navegação para NewsView ao clicar na notícia
                            NavigationLink(destination: NewsView()) {
                                VStack(alignment: .leading, spacing: 12) {
                                    Rectangle()
                                        .fill(Color.gray.opacity(0.3))
                                        .frame(height: 200)
                                        .cornerRadius(12)
                                        .overlay(
                                            Text("Imagem da notícia")
                                                .foregroundColor(.white)
                                                .font(.subheadline)
                                        )
                                        .padding(.horizontal)
                                    
                                    HStack {
                                        Text("Saúde")
                                            .font(.headline)
                                            .fontWeight(.bold)
                                            .padding(.horizontal, 16)
                                            .padding(.vertical, 8)
                                            .background(Color.yellowPrimary)
                                            .cornerRadius(8)
                                            .foregroundColor(.white)
                                        
                                        Spacer()
                                        
                                        Text("Publicado em 31/10/24")
                                            .font(.subheadline)
                                            .foregroundColor(.white)
                                            .fontWeight(.semibold)
                                            .padding(.horizontal, 16)
                                    }
                                    .padding(.top, 8)
                                    
                                    Text("SME reforça ações para garantir o acolhimento psicológico, integridade e segurança da comunidade escolar")
                                        .padding(20)
                                        .foregroundColor(.white)
                                        .font(.title2)
                                }
                                .background(Color.yellowSecondary.opacity(0.9))
                                .cornerRadius(16)
                                .padding(.horizontal, 16)
                            }
                        }
                    }
                    .padding(.vertical, 16)
                    
                    // Rodapé/paginação
                    HStack {
                        Image(systemName: "chevron.backward")
                            .resizable()
                            .frame(width: 24, height: 32)
                            .foregroundColor(.yellowSecondary)
                            .padding(.horizontal, 16)
                        
                        ForEach(1..<totalPages + 1, id: \.self) { page in
                            Text("\(page)")
                                .foregroundColor(.yellowSecondary)
                                .padding(.horizontal, 8)
                        }

                        Image(systemName: "chevron.right")
                            .resizable()
                            .frame(width: 24, height: 32)
                            .foregroundColor(.yellowSecondary)
                            .padding(.horizontal, 16)
                    }
                }
            }
            .background(Color.white)
        }
    }
}

#Preview {
    NewsPageView()
}
