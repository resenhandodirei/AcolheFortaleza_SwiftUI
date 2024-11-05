//
//  AgendamentosView.swift
//  AcolheFortaleza_SwiftUI
//
//  Created by Larissa Martins Correa on 01/11/24.
//

import SwiftUI

struct Agendamento: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let date: String
    let category: String
}

struct AgendamentosView: View {
    let totalPages = 5 // Exemplo de total de páginas
    let categories = ["Saúde", "Capacitação", "Juventude", "Justiça", "Esporte"]
    
    // Exemplo de lista de agendamentos
    let agendamentos = [
        Agendamento(title: "Consulta Médica", description: "Agendamento para consulta com clínico geral.", date: "02/11/2024", category: "Saúde"),
        Agendamento(title: "Oficina de Programação", description: "Curso de introdução à programação para jovens.", date: "05/11/2024", category: "Capacitação"),
        Agendamento(title: "Palestra Motivacional", description: "Evento para juventude com palestrantes renomados.", date: "10/11/2024", category: "Juventude"),
        Agendamento(title: "Atendimento Jurídico", description: "Consulta com advogado para assistência jurídica gratuita.", date: "12/11/2024", category: "Justiça"),
        Agendamento(title: "Aula de Esportes", description: "Aula experimental de esportes variados.", date: "15/11/2024", category: "Esporte")
    ]
    
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
                        
                        Image(systemName: "calendar.badge.plus")
                            .resizable()
                            .frame(width: 34, height: 42)
                            .foregroundColor(.white)
                        
                        VStack(alignment: .leading) {
                            Text("Agendamentos")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.top, 20)
                                .textCase(.uppercase)
                            
                            Text("Encontre o serviço que precisa")
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
                    ForEach(categories, id: \.self) { category in
                        Section(header: Text(category)
                                    .font(.headline)
                                    .foregroundColor(.yellowSecondary)
                                    .padding(.leading, 16)
                                    .padding(.top, 10)) {
                            ForEach(agendamentos.filter { $0.category == category }) { agendamento in
                                VStack(alignment: .leading, spacing: 4) {
                                    Text(agendamento.title)
                                        .font(.title3)
                                        .fontWeight(.bold)
                                        .foregroundColor(.primary)
                                    
                                    Text(agendamento.description)
                                        .font(.body)
                                        .foregroundColor(.black) // Mudança de cinza para preto
                                    
                                    Text(agendamento.date)
                                        .font(.caption)
                                        .foregroundColor(.secondary) // Pode manter um tom mais suave
                                    
                                    Divider()
                                        .background(Color.yellowSecondary) // Divider colorido
                                }
                                .padding()
                                .background(Color.white) // Fundo branco para os itens
                                .cornerRadius(8)
                                .shadow(radius: 2)
                                .padding(.horizontal, 16)
                            }
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
        .edgesIgnoringSafeArea(.top)
        .background(Color(.systemBackground))
    }
}

#Preview {
    AgendamentosView()
}

