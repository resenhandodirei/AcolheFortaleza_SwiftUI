//
//  PrivacySettingsView.swift
//  AcolheFortaleza_SwiftUI
//
//  Created by Larissa Martins Correa on 05/11/24.
//

import SwiftUI

struct PrivacySettingsView: View {
    @State private var isTrackingEnabled = false
    @State private var isLocationAccessEnabled = false
    @State private var isDataSharingEnabled = false
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Rastreamento")) {
                    Toggle(isOn: $isTrackingEnabled) {
                        Label("Permitir Rastreamento", systemImage: "eye.fill")
                    }
                    .toggleStyle(SwitchToggleStyle(tint: .yellowSecondary))
                    Text("Permitir que o aplicativo rastreie sua atividade para melhorar a experiência e personalização.")
                        .font(.caption)
                        .foregroundColor(.gray)
                        .padding(.top, 2)
                }
                
                Section(header: Text("Localização")) {
                    Toggle(isOn: $isLocationAccessEnabled) {
                        Label("Acesso à Localização", systemImage: "location.fill")
                    }
                    .toggleStyle(SwitchToggleStyle(tint: .yellowSecondary))
                    Text("Permitir acesso à sua localização para recomendações e serviços baseados em sua região.")
                        .font(.caption)
                        .foregroundColor(.gray)
                        .padding(.top, 2)
                }
                
                Section(header: Text("Compartilhamento de Dados")) {
                    Toggle(isOn: $isDataSharingEnabled) {
                        Label("Compartilhar Dados de Uso", systemImage: "square.and.arrow.up")
                    }
                    .toggleStyle(SwitchToggleStyle(tint: .yellowSecondary))
                    Text("Permitir o compartilhamento de dados de uso com terceiros para análise e melhoria de serviços.")
                        .font(.caption)
                        .foregroundColor(.gray)
                        .padding(.top, 2)
                }
                
                Section(header: Text("Política de Privacidade")) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Para mais informações sobre como seus dados são coletados e usados, leia nossa Política de Privacidade.")
                            .font(.caption)
                            .foregroundColor(.gray)
                        
                        Link("Leia a Política de Privacidade", destination: URL(string: "https://www.acolhefortaleza.com/politica-de-privacidade")!)
                            .font(.subheadline)
                            .foregroundColor(.blue)
                    }
                    .padding(.vertical, 8)
                }
            }
            .navigationTitle("Privacidade")
        }
    }
}

#Preview {
    PrivacySettingsView()
}
