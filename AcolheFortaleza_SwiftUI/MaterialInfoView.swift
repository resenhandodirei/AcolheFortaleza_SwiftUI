//
//  MaterialInfoView.swift
//  AcolheFortaleza_SwiftUI
//
//  Created by Larissa Martins Correa on 01/11/24.
//

import SwiftUI

struct MaterialInfoView: View {
    let totalPages = 5 // Example total number of pages
    
    var body: some View {
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
                    
                    Image(systemName: "book.fill")
                        .resizable()
                        .frame(width: 34, height: 42)
                        .foregroundColor(.white)
                    
                    VStack(alignment: .leading) {
                        Text("Materiais")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.top, 20)
                            .textCase(.uppercase)
                        
                        Text("Explore recursos e conteúdos educativos.")
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
                        // Material
                        HStack(spacing: 12) {
                            Rectangle()
                                .fill(Color.gray.opacity(0.3))
                                .frame(width: 120, height: 120)
                                .cornerRadius(12)
                                .overlay(
                                    Text("Imagem")
                                        .foregroundColor(.white)
                                        .font(.subheadline)
                                )
                                .padding(.horizontal)
                            
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Matemática Básica")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                
                                Text("Última atualização em 31/10/24")
                                    .font(.subheadline)
                                    .foregroundColor(.white)
                                    .fontWeight(.semibold)
                                
                                Text("Material introdutório de matemática básica para reforço escolar.")
                                    .foregroundColor(.white)
                                    .font(.body)
                            }
                            .padding()
                        }
                        .background(Color.yellowSecondary.opacity(0.9))
                        .cornerRadius(16)
                        .padding(.horizontal, 16)
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

#Preview {
    MaterialInfoView()
}


