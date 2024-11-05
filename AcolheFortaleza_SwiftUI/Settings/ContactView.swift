//
//  ContactView.swift
//  AcolheFortaleza_SwiftUI
//
//  Created by Larissa Martins Correa on 30/10/24.
//

import SwiftUI

struct ContactView: View {
    var body: some View {
        ScrollView { // Adicionando ScrollView para permitir rolagem
            VStack(alignment: .leading) {
                // Espaço adicional para o título
                HStack {
                    Image(systemName: "chevron.backward")
                        .resizable()
                        .frame(width: 24, height: 32)
                        .foregroundColor(.yellowSecondary)
                    
                    Text("Telefones úteis")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .textCase(.uppercase)
                        .foregroundColor(.yellowSecondary)
                        .padding(.horizontal, 16) // Ajustando padding
                }
                .padding(.vertical, 48) // Espaço vertical adicional

                // Retângulos de contatos
                VStack(spacing: 10) { // Adicionando espaçamento entre os cartões
                    contactCard(name: "Fala Fortaleza", description: "Ouvidoria geral da prefeitura de Fortaleza.", phoneNumber: "156")
                    contactCard(name: "SAMU", description: "Serviço de Atendimento Móvel de Urgência", phoneNumber: "192")
                    contactCard(name: "CIOSP", description: "Central Integrada de Operações de Segurança Pública", phoneNumber: "190")
                    contactCard(name: "Bombeiros", description: "Corpo de Bombeiros Militar", phoneNumber: "193")
                    contactCard(name: "Defensoria Pública", description: "Atendimento jurídico gratuito", phoneNumber: "129")
                    contactCard(name: "Vigilância Sanitária", description: "Serviço de Vigilância em Saúde", phoneNumber: "136")
                }
                .padding(.horizontal, 16) // Adicionando padding horizontal para os cartões
            }
            .padding() // Padding geral para o conteúdo
        }
        .background(Color.white) // Fundo branco para o ScrollView
        .edgesIgnoringSafeArea(.all) // Ignorando a área segura
    }

    // Função para criar um cartão de contato
    private func contactCard(name: String, description: String, phoneNumber: String) -> some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.yellowSecondary, Color.yellowPrimary.opacity(0.9)]),
                startPoint: .leading,
                endPoint: .trailing
            )
            .cornerRadius(8.0)
            .frame(height: 120)
            .padding(.horizontal, 8)

            HStack {
                VStack(alignment: .leading) {
                    Text(name)
                        .textCase(.uppercase)
                        .font(.title3)

                    Text(description)
                        .font(.subheadline) // Ajustando o tamanho da fonte para descrição
                        .foregroundColor(.white.opacity(0.8)) // Cor mais suave para descrição

                    Text(phoneNumber)
                        .font(.title)
                        .fontWeight(.bold)
                }
                .foregroundColor(.white)

                Image(systemName: "phone.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
            }
        }
        .cornerRadius(8.0) // Para o canto arredondado do retângulo
    }
}

#Preview {
    ContactView()
}

