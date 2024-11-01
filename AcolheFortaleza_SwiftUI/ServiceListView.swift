//
//  ServiceListView.swift
//  AcolheFortaleza_SwiftUI
//
//  Created by Larissa Martins Correa on 29/10/24.
//

import SwiftUI

struct ServiceListView: View {
    let totalPages = 5 // Example total number of pages
    
    let categories = ["Saúde", "Capacitação", "Juventude", "Justiça", "Esporte"]

    var body: some View {
        VStack(alignment: .trailing, spacing: 0) {
            // Navbar fixada no topo
            Rectangle()
                .fill(Color.yellowSecondary)
                .frame(height: 150)
                .overlay(
                    HStack {
                        Image(systemName: "chevron.backward")
                            .resizable()
                            .frame(width: 24, height: 32)
                            .foregroundColor(.white)
                            .padding(.leading, 16)
                        
                        Image(systemName: "plus.rectangle.on.rectangle")
                            .resizable()
                            .frame(width: 34, height: 42)
                            .foregroundColor(.white)
                        
                        VStack(alignment: .leading) {
                            Text("Serviços")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.top, 20)
                                .textCase(.uppercase)
                            
                            Text("O que você precisa pode estar aqui")
                                .font(.subheadline)
                                .foregroundColor(.white)
                                .padding(.bottom, 20)
                        }
                    }
                    .padding(.top, 56)
                )
            
            Spacer()
            
            // Conteúdo principal com lista de serviços
            ScrollView {
                VStack(spacing: 16) {
                    ForEach(0..<5) { index in
                        // Cada item de serviço
                        ZStack(alignment: .topLeading) {
                            Rectangle()
                                .fill(Color.yellow.opacity(0.78))
                                .frame(height: 200)
                                .cornerRadius(12)
                                .overlay(
                                    Text("Imagem do serviço")
                                        .foregroundColor(.white)
                                        .font(.subheadline)
                                )
                            
                            Text(categories[index % categories.count])
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.horizontal, 16)
                                .padding(.vertical, 8)
                                .background(Color.yellowPrimary)
                                .cornerRadius(8)
                                .padding([.top, .leading], 16)
                        }
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
        .edgesIgnoringSafeArea(.top)
        .background(Color(.systemBackground))
    }
}

#Preview {
    ServiceListView()
}
