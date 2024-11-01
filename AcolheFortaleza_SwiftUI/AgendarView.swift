//
//  AgendarView.swift
//  AcolheFortaleza_SwiftUI
//
//  Created by Larissa Martins Correa on 01/11/24.
//

import SwiftUI

struct AgendarView: View {
    @State private var nome: String = ""
    @State private var data: Date = Date()
    @State private var hora: Date = Date()
    @State private var categoria: String = "Saúde"
    @State private var descricao: String = ""
    
    let categorias = ["Saúde", "Capacitação", "Juventude", "Justiça", "Esporte"]

    var body: some View {
        VStack(spacing: 0) {
            // Navbar fixada no topo
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.yellowPrimary, Color.yellowSecondary]),
                               startPoint: .top,
                               endPoint: .bottom)
                    .edgesIgnoringSafeArea(.top)
                
                HStack {
                    Image(systemName: "chevron.backward")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(.white)
                        .padding(.leading, 16)

                    VStack(alignment: .leading) {
                        Text("Agende aqui")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .textCase(.uppercase)
                        
                        Text("Agende seus atendimentos na rede municipal.")
                            .font(.subheadline)
                            .foregroundColor(.white)
                    }
                    .padding(.top, 16)
                    .padding(.leading, 8)
                }
            }
            .frame(height: 120)
            
            // Campos de entrada
            Form {
                Section(header: Text("Detalhes do Agendamento").font(.headline)) {
                    TextField("Nome", text: $nome)
                        .textFieldStyle(PlainTextFieldStyle())
                        .padding()
                        .background(Color.white)
                        .cornerRadius(8)
                        .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.yellowSecondary, lineWidth: 2))

                    // Picker de categorias
                    Picker("Categoria", selection: $categoria) {
                        ForEach(categorias, id: \.self) { categoria in
                            Text(categoria).tag(categoria)
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8)
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.yellowSecondary, lineWidth: 2))

                    // Campo de data
                    DatePicker("Data", selection: $data, displayedComponents: .date)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(8)
                        .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.yellowSecondary, lineWidth: 2))

                    // Campo de hora
                    DatePicker("Hora", selection: $hora, displayedComponents: .hourAndMinute)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(8)
                        .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.yellowSecondary, lineWidth: 2))

                    TextField("Descrição", text: $descricao)
                        .textFieldStyle(PlainTextFieldStyle())
                        .padding()
                        .background(Color.white)
                        .cornerRadius(8)
                        .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.yellowSecondary, lineWidth: 2))
                        .frame(height: 100)
                }
                
                // Botão de agendar
                Button(action: {
                    agendar()
                }) {
                    Text("Agendar")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.yellowSecondary)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()
            }
            .padding(.top, 10) // Adiciona espaço acima do formulário
        }
        .background(Color(.systemBackground))
        .navigationBarHidden(true) // Ocultando a barra de navegação se necessário
    }

    private func agendar() {
        // Função para manipular a ação de agendamento
        print("Agendamento feito para \(nome) na data \(data) às \(hora) na categoria \(categoria).")
    }
}

#Preview {
    AgendarView()
}

