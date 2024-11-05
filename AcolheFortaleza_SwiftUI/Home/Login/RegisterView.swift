//
//  RegisterView.swift
//  AcolheFortaleza_SwiftUI
//
//  Created by Larissa Martins Correa on 30/10/24.
//


import SwiftUI

struct RegisterView: View {
    @State private var name: String = ""
    @State private var cpf: String = ""
    @State private var birthDate: String = ""
    @State private var email: String = ""
    @State private var phoneNumber: String = ""
    @State private var selectedGender: String = "Prefiro não informar"
    @State private var selectedNeighborhood: String = ""
    @State private var notFromFortaleza: Bool = false
    @State private var agreeToPrivacyPolicy: Bool = false
    
    let genderOptions = ["Homem cis", "Mulher cis", "Não-binário", "Homem trans", "Mulher trans", "Prefiro não informar"]
    let neighborhoods = ["Centro", "Aldeota", "Meireles", "Papicu", "Benfica", "Messejana", "Cocó"] // Exemplo de bairros em Fortaleza
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack(alignment: .center) {
                NavigationLink(destination: ContentHomeLoginsView()) {
                    Image(systemName: "chevron.backward")
                        .resizable()
                        .frame(width: 24, height: 32)
                        .foregroundColor(.yellowSecondary)
                }
                
                Spacer()
                
                VStack {
                    Text("Acolhe")
                        .font(.system(size: 54, weight: .bold, design: .serif))
                        .minimumScaleFactor(0.4)
                        .foregroundColor(.yellowSecondary)
                    
                    Text("Fortaleza")
                        .textCase(.uppercase)
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.yellowSecondary)
                }
                
                Spacer()
            }
            .padding(.horizontal, 16)
            .padding(.top, 10) // Padding adicionado para afastar o título do topo
            
            // ScrollView para o conteúdo do formulário
            ScrollView {
                // Formulário de Entrada
                Group {
                    TextField("Nome completo", text: $name)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 8).stroke(Color.yellowPrimary, lineWidth: 1))
                    
                    TextField("CPF", text: $cpf)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 8).stroke(Color.yellowPrimary, lineWidth: 1))
                    
                    TextField("Data de nascimento", text: $birthDate)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 8).stroke(Color.yellowPrimary, lineWidth: 1))
                    
                    TextField("E-mail", text: $email)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 8).stroke(Color.yellowPrimary, lineWidth: 1))
                    
                    TextField("Número de celular", text: $phoneNumber)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 8).stroke(Color.yellowPrimary, lineWidth: 1))
                }
                .padding(.horizontal, 16)
                
                // Gênero - Opção com Rádio Button
                VStack(alignment: .leading, spacing: 10) {
                    Text("Identidade de Gênero")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    
                    ForEach(genderOptions, id: \.self) { option in
                        Button(action: {
                            selectedGender = option
                        }) {
                            HStack {
                                Circle()
                                    .fill(selectedGender == option ? Color.yellowSecondary : Color.clear)
                                    .frame(width: 16, height: 16)
                                    .overlay(Circle().stroke(Color.yellowPrimary, lineWidth: 1))
                                
                                Text(option)
                                    .foregroundColor(.primary)
                            }
                        }
                    }
                }
                .padding(.horizontal, 16)
                
                // Bairro com Picker estilizado
                VStack(alignment: .leading, spacing: 10) {
                    Text("Bairro")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    
                    Picker("Bairro", selection: $selectedNeighborhood) {
                        ForEach(neighborhoods, id: \.self) { neighborhood in
                            Text(neighborhood)
                        }
                    }
                    .pickerStyle(WheelPickerStyle()) // Estilo mais visual para o Picker
                    .frame(maxWidth: .infinity, maxHeight: 100)
                    .clipped()
                    .padding(.horizontal, 16)
                    .background(RoundedRectangle(cornerRadius: 10).stroke(Color.yellowPrimary, lineWidth: 1))
                    
                    Toggle("Não resido em Fortaleza", isOn: $notFromFortaleza)
                        .padding(.horizontal, 16)
                }
                
                // Aceitação da Política de Privacidade
                Toggle("Concordo com a Política de Privacidade", isOn: $agreeToPrivacyPolicy)
                    .padding(.horizontal, 16)
                    .padding(.top, 10)
                
                // Botão Registrar Centralizado
                HStack {
                    Spacer()
                    
                    NavigationLink(destination: HomeUIView()) {
                        Text("Registrar")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .frame(width: 200, height: 50)
                            .background(Color.yellowSecondary)
                            .foregroundColor(.white)
                            .cornerRadius(8.0)
                            .padding(.top, 20)
                    }
                    
                    Spacer()
                }
                
                Spacer()
            }
            .padding(.horizontal, 16)
        }
    }
}

#Preview {
    RegisterView()
}
