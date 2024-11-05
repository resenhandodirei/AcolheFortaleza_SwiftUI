//
//  SecuritySettingsView.swift
//  AcolheFortaleza_SwiftUI
//
//  Created by Larissa Martins Correa on 05/11/24.
//

import SwiftUI

struct SecuritySettingsView: View {
    @State private var isTwoFactorAuthEnabled = false
    @State private var isBiometricAuthEnabled = false
    @State private var currentPassword = ""
    @State private var newPassword = ""
    @State private var confirmPassword = ""
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Autenticação")) {
                    Toggle(isOn: $isTwoFactorAuthEnabled) {
                        Label("Autenticação em Duas Etapas", systemImage: "lock.shield")
                    }
                    .toggleStyle(SwitchToggleStyle(tint: .yellowSecondary))
                    
                    Toggle(isOn: $isBiometricAuthEnabled) {
                        Label("Autenticação Biométrica", systemImage: "faceid")
                    }
                    .toggleStyle(SwitchToggleStyle(tint: .yellowSecondary))
                }
                
                Section(header: Text("Alterar Senha")) {
                    SecureField("Senha Atual", text: $currentPassword)
                    SecureField("Nova Senha", text: $newPassword)
                    SecureField("Confirmar Nova Senha", text: $confirmPassword)
                    
                    Button(action: {
                        // Lógica para atualizar a senha
                        print("Senha alterada com sucesso")
                    }) {
                        Text("Atualizar Senha")
                            .frame(maxWidth: .infinity, alignment: .center)
                    }
                    .buttonStyle(BorderlessButtonStyle())
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.yellowSecondary)
                    .cornerRadius(8)
                }
                
                Section(header: Text("Sessões Ativas")) {
                    Text("Encerrar outras sessões")
                        .foregroundColor(.red)
                        .onTapGesture {
                            // Lógica para encerrar sessões
                            print("Sessões encerradas")
                        }
                }
            }
            .navigationTitle("Segurança")
        }
    }
}

#Preview {
    SecuritySettingsView()
}
