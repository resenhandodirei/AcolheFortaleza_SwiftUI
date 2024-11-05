//
//  NotificationsView.swift
//  AcolheFortaleza_SwiftUI
//
//  Created by Larissa Martins Correa on 05/11/24.
//

import SwiftUI

struct NotificationsView: View {
    // Estrutura de dados de exemplo para notificações
    struct Notification: Identifiable {
        let id = UUID()
        let title: String
        let message: String
        let date: String
        let icon: String
        let isRead: Bool
    }
    
    // Lista de notificações de exemplo
    @State private var notifications = [
        Notification(title: "Nova Mensagem",
                     message: "Você recebeu uma nova mensagem de atendimento.",
                     date: "29 de Outubro",
                     icon: "envelope.fill",
                     isRead: false),
        Notification(title: "Atualização de Atendimento",
                     message: "Seu atendimento foi atualizado. Confira as novidades.",
                     date: "28 de Outubro",
                     icon: "person.fill.checkmark",
                     isRead: true),
        Notification(title: "Evento de Saúde",
                     message: "Participe do evento de saúde mental na próxima semana.",
                     date: "25 de Outubro",
                     icon: "calendar",
                     isRead: true)
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(notifications) { notification in
                    HStack(alignment: .top, spacing: 16) {
                        // Ícone da notificação
                        Image(systemName: notification.icon)
                            .foregroundColor(notification.isRead ? .gray : .yellowSecondary)
                            .font(.system(size: 28))
                            .padding(.top, 4)
                        
                        VStack(alignment: .leading, spacing: 4) {
                            // Título e data
                            HStack {
                                Text(notification.title)
                                    .font(.headline)
                                    .foregroundColor(notification.isRead ? .gray : .primary)
                                Spacer()
                                Text(notification.date)
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                            
                            // Mensagem
                            Text(notification.message)
                                .font(.subheadline)
                                .foregroundColor(notification.isRead ? .gray : .primary)
                                .lineLimit(2)
                                .padding(.top, 2)
                        }
                    }
                    .padding(.vertical, 8)
                    .background(notification.isRead ? Color(.systemGray6) : Color.yellow.opacity(0.1))
                    .cornerRadius(8)
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Notificações")
            .padding(.horizontal)
        }
    }
}

#Preview {
    NotificationsView()
}
