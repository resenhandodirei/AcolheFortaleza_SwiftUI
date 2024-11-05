//
//  UserProfileView.swift
//  AcolheFortaleza_SwiftUI
//
//  Created by Larissa Martins Correa on 05/11/24.
//

import SwiftUI

struct UserProfileView: View {
    // Variáveis de exemplo para dados do usuário
    @State private var userName = "Adm"
    @State private var userEmail = "adm@example.com"
    @State private var showLogoffView = false
    @State private var showEditProfileView = false

    var body: some View {
        VStack(spacing: 20) {
            // Seção da Imagem do Usuário
            VStack {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .foregroundColor(.yellowSecondary)
                    .padding(.top, 40)
                
                Text(userName)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                    .padding(.top, 8)
                
                Text(userEmail)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.bottom, 32)

            // Seção de Detalhes do Usuário
            VStack(alignment: .leading, spacing: 12) {
                HStack {
                    Image(systemName: "envelope.fill")
                        .foregroundColor(.yellowSecondary)
                    Text("Email")
                        .foregroundColor(.gray)
                    Spacer()
                    Text(userEmail)
                        .foregroundColor(.primary)
                }

                HStack {
                    Image(systemName: "phone.fill")
                        .foregroundColor(.yellowSecondary)
                    Text("Telefone")
                        .foregroundColor(.gray)
                    Spacer()
                    Text("(85) 1234-5678") // Número de exemplo
                        .foregroundColor(.primary)
                }

                HStack {
                    Image(systemName: "location.fill")
                        .foregroundColor(.yellowSecondary)
                    Text("Localização")
                        .foregroundColor(.gray)
                    Spacer()
                    Text("Fortaleza, CE") // Localização de exemplo
                        .foregroundColor(.primary)
                }
            }
            .padding(.horizontal, 24)
            
            Spacer()

            // Botões de Ação
            VStack(spacing: 16) {
                // Botão de Editar Perfil
                Button(action: {
                    showEditProfileView = true
                }) {
                    Text("Editar Perfil")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(8)
                }
                .sheet(isPresented: $showEditProfileView) {
                    EditProfileView(userName: $userName, userEmail: $userEmail)
                }

                // Botão de Logoff
                Button(action: {
                    showLogoffView = true
                }) {
                    Text("Sair")
                        .font(.headline)
                        .foregroundColor(.red)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color(.systemGray5))
                        .cornerRadius(8)
                }
                .fullScreenCover(isPresented: $showLogoffView) {
                    LogoffView()
                }
            }
            .padding(.horizontal, 24)
            .padding(.bottom, 40)
        }
        .navigationTitle("Perfil do Usuário")
        .background(Color(.systemGray6))
    }
}

// Tela de Edição do Perfil
struct EditProfileView: View {
    @Binding var userName: String
    @Binding var userEmail: String
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Informações Pessoais")) {
                    TextField("Nome", text: $userName)
                    TextField("Email", text: $userEmail)
                        .keyboardType(.emailAddress)
                }
            }
            .navigationTitle("Editar Perfil")
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancelar") {
                        dismiss()
                    }
                }
                ToolbarItem(placement: .confirmationAction) {
                    Button("Salvar") {
                        // Ação de salvar as alterações
                        dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    UserProfileView()
}
