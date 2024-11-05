//
//  AccessibilitySettingsView.swift
//  AcolheFortaleza_SwiftUI
//
//  Created by Larissa Martins Correa on 05/11/24.
//

import SwiftUI

struct AccessibilitySettingsView: View {
    @State private var textSize: Double = 14.0
    @State private var isHighContrastEnabled = false
    @State private var isVoiceOverEnabled = false
    @State private var isReducedMotionEnabled = false
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Tamanho do Texto")) {
                    VStack(alignment: .leading) {
                        Text("Ajuste o tamanho do texto")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        
                        Slider(value: $textSize, in: 10...24, step: 1) {
                            Text("Tamanho do Texto")
                        }
                        .accentColor(.yellowSecondary)
                        
                        HStack {
                            Text("Pequeno")
                                .font(.system(size: 10))
                            Spacer()
                            Text("Grande")
                                .font(.system(size: 24))
                        }
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    }
                }
                
                Section(header: Text("Ajustes Visuais")) {
                    Toggle(isOn: $isHighContrastEnabled) {
                        Label("Alto Contraste", systemImage: "circle.lefthalf.fill")
                    }
                    .toggleStyle(SwitchToggleStyle(tint: .yellowSecondary))
                }
                
                Section(header: Text("Ajustes de Interação")) {
                    Toggle(isOn: $isVoiceOverEnabled) {
                        Label("VoiceOver", systemImage: "speaker.wave.2.fill")
                    }
                    .toggleStyle(SwitchToggleStyle(tint: .yellowSecondary))
                    
                    Toggle(isOn: $isReducedMotionEnabled) {
                        Label("Reduzir Movimento", systemImage: "waveform.path")
                    }
                    .toggleStyle(SwitchToggleStyle(tint: .yellowSecondary))
                }
                
                Section(header: Text("Pré-visualização")) {
                    Text("Exemplo de texto com o tamanho ajustado.")
                        .font(.system(size: textSize))
                        .foregroundColor(isHighContrastEnabled ? .black : .gray)
                        .padding()
                        .background(isHighContrastEnabled ? Color.yellowSecondary : Color(.systemGray6))
                        .cornerRadius(8)
                }
            }
            .navigationTitle("Acessibilidade")
        }
    }
}

#Preview {
    AccessibilitySettingsView()
}
