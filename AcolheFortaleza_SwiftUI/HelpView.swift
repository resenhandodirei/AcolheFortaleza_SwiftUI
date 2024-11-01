//
//  HelpView.swift
//  AcolheFortaleza_SwiftUI
//
//  Created by Larissa Martins Correa on 30/10/24.
//

import SwiftUI

struct HelpView: View {
    
    @State private var search = ""

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "chevron.backward")
                    .resizable()
                    .frame(width: 24, height: 32)
                    .foregroundColor(.yellowSecondary)
                
                Text("Ajuda")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .textCase(.uppercase)
                    .foregroundColor(.yellowSecondary)
                    .padding(.horizontal, 48)
                
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 16)
            
            // Barra de pesquisa
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                    .padding(.leading, 8)
                
                TextField("O que você está procurando?", text: $search)
                    .textFieldStyle(PlainTextFieldStyle()) // Mudar o estilo do TextField
                    .padding(8) // Adiciona preenchimento ao TextField
            }
            .background(RoundedRectangle(cornerRadius: 8).stroke(Color.yellow, lineWidth: 1)) // Borda amarela
            .padding(.horizontal, 16)
            .padding(.vertical, 8)

            // Itens de ajuda
            VStack(alignment: .leading) {
                Text("Acesso")
                    .font(.title3)
                    .textCase(.uppercase)
                    .fontWeight(.semibold)
                    .foregroundColor(.yellowSecondary)
                
                Text("Ajuda com o e-mail ou celular da conta")
                    .fontDesign(.default)
                    .foregroundColor(.gray)
                
                Text("Ajuda com o código de acesso da conta")
                    .fontDesign(.default)
                    .foregroundColor(.gray)
                
                Text("Ajuda com a senha")
                    .fontDesign(.default)
                    .foregroundColor(.gray)
                
                Text("Como desativar a conta")
                    .fontDesign(.default)
                    .foregroundColor(.gray)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .padding(.top, 8) // Adiciona espaço entre as seções
            
            VStack(alignment: .leading) {
                Text("Notificações")
                    .font(.title3)
                    .textCase(.uppercase)
                    .fontWeight(.semibold)
                    .foregroundColor(.yellowSecondary)
                
                Text("Ajuda com notificações do aplicativo")
                    .fontDesign(.default)
                    .foregroundColor(.gray)
                
                Text("Ajuda com notificações via SMS e e-mail")
                    .fontDesign(.default)
                    .foregroundColor(.gray)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .padding(.top, 8) // Adiciona espaço entre as seções
            
            VStack(alignment: .leading) {
                Text("Acessibilidade")
                    .font(.title3)
                    .textCase(.uppercase)
                    .fontWeight(.semibold)
                    .foregroundColor(.yellowSecondary)
                
                Text("Ajuda com as configurações de tela")
                    .fontDesign(.default)
                    .foregroundColor(.gray)
                
                Text("Ajuda com idiomas")
                    .fontDesign(.default)
                    .foregroundColor(.gray)
                
                Text("Ajuda com uso de dados de rede")
                    .fontDesign(.default)
                    .foregroundColor(.gray)
                
                Text("Ajuda com as configurações para pessoas com necessidades especiais")
                    .fontDesign(.default)
                    .foregroundColor(.gray)
                
                HStack {
                    Text("Sobre o Tradutor de Libras")
                        .fontDesign(.default)
                        .foregroundColor(.gray)
                    
                    // Image(systemName: <#T##String#>)
                }
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .padding(.top, 8) // Adiciona espaço entre as seções
            
            VStack(alignment: .leading) {
                Text("Privacidade")
                    .font(.title3)
                    .textCase(.uppercase)
                    .fontWeight(.semibold)
                    .foregroundColor(.yellowSecondary)
                
                Text("Ajuda com permissões de localização")
                    .fontDesign(.default)
                    .foregroundColor(.gray)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .padding(.top, 8) // Adiciona espaço entre as seções

        }
        .padding(.bottom) // Adiciona um espaçamento na parte inferior
        .padding(.leading, 16) // Alinha com a barra de pesquisa
        Spacer()
    }
}

#Preview {
    HelpView()
}

