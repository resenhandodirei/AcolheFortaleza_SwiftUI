//
//  LogoffView.swift
//  AcolheFortaleza_SwiftUI
//
//  Created by Larissa Martins Correa on 04/11/24.
//

import SwiftUI

struct LogoffView: View {
    // Estado para controlar a exibição do alerta de confirmação
    @State private var showLogoffConfirmation = false
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack(spacing: 20) {
            // Cabeçalho da Tela
            VStack {
                Image(systemName: "exclamationmark.triangle.fill")
                    .font(.system(size: 48))
                    .foregroundColor(.yellowSecondary)
                    .padding(.bottom, 8)

                Text("Sair do Acolhe Fortaleza")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.yellowPrimary)
                    .multilineTextAlignment(.center)
            }
            .padding(.top, 40)

            // Mensagem de confirmação
            Text("Tem certeza de que deseja sair? Esta ação encerrará sua sessão.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)

            Spacer()

            // Botões de Ação
            VStack(spacing: 12) {
                // Botão de confirmação de logoff
                Button(action: {
                    showLogoffConfirmation = true
                }) {
                    Text("Confirmar Logoff")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.red)
                        .cornerRadius(8)
                }
                .alert(isPresented: $showLogoffConfirmation) {
                    Alert(
                        title: Text("Confirmar Logoff"),
                        message: Text("Deseja realmente sair do Acolhe Fortaleza?"),
                        primaryButton: .destructive(Text("Sair")) {
                            // Ação ao confirmar logoff
                            // Aqui você pode adicionar a lógica de deslogar o usuário
                            presentationMode.wrappedValue.dismiss()
                        },
                        secondaryButton: .cancel(Text("Cancelar"))
                    )
                }

                // Botão de cancelar
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Cancelar")
                        .font(.headline)
                        .foregroundColor(.gray)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color(.systemGray5))
                        .cornerRadius(8)
                }
            }
            .padding(.horizontal, 24)
            .padding(.bottom, 40)
        }
        .background(Color(.systemGray6)) // Fundo da tela
        .navigationTitle("Logoff")
    }
}

#Preview {
    LogoffView()
}
