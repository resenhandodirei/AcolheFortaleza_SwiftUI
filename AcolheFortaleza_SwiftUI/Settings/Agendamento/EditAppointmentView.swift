//
//  EditAppointmentView.swift
//  AcolheFortaleza_SwiftUI
//
//  Created by Larissa Martins Correa on 05/11/24.
//

import SwiftUI

struct EditAppointmentView: View {
    @State private var selectedDate = Date()
    @State private var selectedTime = Date()
    @State private var notes: String = ""
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Data e Hora")) {
                    DatePicker("Data", selection: $selectedDate, displayedComponents: .date)
                        .datePickerStyle(GraphicalDatePickerStyle())
                    
                    DatePicker("Horário", selection: $selectedTime, displayedComponents: .hourAndMinute)
                        .datePickerStyle(WheelDatePickerStyle())
                }
                
                Section(header: Text("Notas")) {
                    TextEditor(text: $notes)
                        .frame(height: 100)
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                        .padding(.vertical, 8)
                        .foregroundColor(.gray)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color(.systemGray4), lineWidth: 1)
                        )
                }
                
                Section {
                    Button(action: saveAppointment) {
                        Text("Salvar Alterações")
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .padding()
                            .background(Color.yellowSecondary)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                }
            }
            .navigationTitle("Editar Agendamento")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    func saveAppointment() {
        // Lógica para salvar as alterações do agendamento
        print("Agendamento atualizado!")
    }
}

#Preview {
    EditAppointmentView()
}
