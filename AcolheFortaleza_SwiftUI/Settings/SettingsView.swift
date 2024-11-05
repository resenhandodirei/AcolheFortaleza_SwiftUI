//
//  HelpView.swift
//  AcolheFortaleza_SwiftUI
//
//  Created by Larissa Martins Correa on 30/10/24.
//

import SwiftUI

struct SettingsView: View {
    
    @State private var search = ""

    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                HStack {
                    NavigationLink(destination: MenuListView()) {
                        Image(systemName: "chevron.backward")
                            .resizable()
                            .frame(width: 24, height: 32)
                            .foregroundColor(.yellowSecondary)
                    }
                    
                    Text("Configurações")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .textCase(.uppercase)
                        .foregroundColor(.yellowSecondary)
                        .padding(.horizontal, 48)
                    
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 16)
                
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

                // Itens de conta e configuração
                HStack(spacing: 16) {
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 42, height: 42)
                        .foregroundColor(.yellowSecondary)
                    
                    VStack(alignment: .leading) {
                        Text("Conta")
                            .font(.title3)
                            .textCase(.uppercase)
                            .fontWeight(.semibold)
                            .foregroundColor(.yellowSecondary)
                        Text("Veja as informações da sua conta")
                            .fontDesign(.default)
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                
                HStack(spacing: 16) {
                    Image(systemName: "bell.fill")
                        .resizable()
                        .frame(width: 42, height: 42)
                        .foregroundColor(.yellowSecondary)
                    
                    VStack(alignment: .leading) {
                        Text("Notificações")
                            .font(.title3)
                            .textCase(.uppercase)
                            .fontWeight(.semibold)
                            .foregroundColor(.yellowSecondary)
                        Text("Gerencie os alertas do aplicativo")
                            .fontDesign(.default)
                            .foregroundColor(.gray)

                    }
                    
                    Spacer()
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                
                HStack(spacing: 16) {
                    Image(systemName: "lock.open")
                        .resizable()
                        .frame(width: 42, height: 42)
                        .foregroundColor(.yellowSecondary)
                    
                    VStack(alignment: .leading) {
                        Text("Segurança")
                            .font(.title3)
                            .textCase(.uppercase)
                            .fontWeight(.semibold)
                            .foregroundColor(.yellowSecondary)
                        Text("Gerencie suas informações de acesso à conta")
                            .fontDesign(.default)
                            .foregroundColor(.gray)

                    }
                    
                    Spacer()
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                
                HStack(spacing: 16) {
                    Image(systemName: "accessibility.fill")
                        .resizable()
                        .frame(width: 42, height: 42)
                        .foregroundColor(.yellowSecondary)
                    
                    VStack(alignment: .leading) {
                        Text("Acessibilidade")
                            .font(.title3)
                            .textCase(.uppercase)
                            .fontWeight(.semibold)
                            .foregroundColor(.yellowSecondary)
                        Text("Gerencie o modo como o conteúdo do Acolhe é exibido para você (idioma, uso de dados móveis, modo de tela)")
                            .fontDesign(.default)
                            .foregroundColor(.gray)

                    }
                    
                    Spacer()
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                
                HStack(spacing: 16) {
                    Image(systemName: "shield.fill")
                        .resizable()
                        .frame(width: 42, height: 42)
                        .foregroundColor(.yellowSecondary)
                    
                    VStack(alignment: .leading) {
                        Text("Privacidade")
                            .font(.title3)
                            .textCase(.uppercase)
                            .fontWeight(.semibold)
                            .foregroundColor(.yellowSecondary)
                        Text("Gerencie o que o Acolhe pode fazer com os dados fornecidos por você.")
                            .fontDesign(.default)
                            .foregroundColor(.gray)

                    }
                    
                    Spacer()
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                
                HStack(spacing: 16) {
                    Image(systemName: "scale.3d")
                        .resizable()
                        .frame(width: 42, height: 42)
                        .foregroundColor(.yellowSecondary)
                    
                    VStack(alignment: .leading) {
                        Text("Legal")
                            .font(.title3)
                            .textCase(.uppercase)
                            .fontWeight(.semibold)
                            .foregroundColor(.yellowSecondary)
                        Text("Configura os Termos de Uso e as Políticas de Privacidade do Acolhe.")
                            .fontDesign(.default)
                            .foregroundColor(.gray)

                    }
                    
                    Spacer()
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            }
            .padding(.bottom) // Adiciona um espaçamento na parte inferior
            Spacer()
        }
    }
}

#Preview {
    SettingsView()
}

