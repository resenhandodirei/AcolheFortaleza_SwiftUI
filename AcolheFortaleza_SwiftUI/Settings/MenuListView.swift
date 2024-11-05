//
//  MenuListView.swift
//  AcolheFortaleza_SwiftUI
//
//  Created by Larissa Martins Correa on 13/09/24.
//

import SwiftUI

struct MenuListView: View {
    
    @State private var search = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                // Gradiente com tons de amarelo
                LinearGradient(
                    gradient: Gradient(colors: [Color.yellowSecondary, Color.yellowPrimary.opacity(9.0)]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .edgesIgnoringSafeArea(.all) // Garante que o fundo cubra toda a área da tela
                
                VStack(alignment: .leading) {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Acolhe")
                                .font(.system(size: 32, weight: .bold, design: .serif))
                                .minimumScaleFactor(0.5)
                                .foregroundColor(.white)
                            
                            Text("Fortaleza")
                                .textCase(.uppercase)
                                .font(.system(size: 24, weight: .semibold, design: .serif))
                                .foregroundColor(.white)
                        }
                        Spacer()
                        
                        NavigationLink(destination: HomeUIView()) {
                            Image(systemName: "xmark")                        .resizable()
                                .frame(width: 32, height: 32)
                                .foregroundStyle(.white)
                                .padding(.horizontal, 16)
                        }
                    }
                    .padding(.horizontal, 16)
                    .padding(.top, 16)
                    
                    ZStack(alignment: .leading) { // Alinhando o conteúdo à esquerda
                        // Campo de pesquisa
                        TextField("O que você está procurando?", text: $search)
                            .textFieldStyle(PlainTextFieldStyle()) // Muda o estilo do TextField
                            .padding(8) // Adiciona preenchimento ao TextField
                            .background(RoundedRectangle(cornerRadius: 8).stroke(Color.white, lineWidth: 1)) // Borda branca
                        
                        // Ícone de pesquisa
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.white)
                            .padding(.leading, 10) // Espaço à esquerda do ícone
                            .padding(.top, 8) // Ajusta a posição vertical do ícone
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 16)

                    Group {
                        NavigationLink(destination: NewsPageView()) {
                            Text("Notícias")
                        }
                        Text("Equipamentos por tipo de serviço")
                        Text("Equipamentos por localidade")
                        Text("Rede de atenção psicossocial")
                        NavigationLink(destination: MaterialInfoView()) {
                            Text("Materiais informativos")
                        }
                        NavigationLink(destination: AgendarView()) {
                            Text("Inscrições e agendamentos")
                        }
                    }
                    .textCase(.uppercase)
                    .fontWeight(.semibold)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 16)
                    .foregroundColor(.white)

                    Divider()
                        .background(Color.gray)
                        .padding(.horizontal, 16)
                    
                    Group {
                        Text("Sobre o acolhe")
                        NavigationLink(destination: ContactView()) {
                            Text("Telefones úteis")
                        }
                        Text("Ir para o portal da prefeitura de Fortaleza")
                    }
                    .textCase(.uppercase)
                    .fontWeight(.semibold)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 16)
                    .foregroundColor(.white)
                    
                    Divider()
                        .background(Color.gray)
                        .padding(.horizontal, 16)
                    
                    Group {
                        HStack {
                            NavigationLink(destination: HelpView()) {
                                Image(systemName: "questionmark.circle.fill")
                                Text("Ajuda")
                            }
                        }
                        
                        HStack {
                            NavigationLink(destination: SettingsView()) {
                                Image(systemName: "gearshape.fill")
                                Text("Configurações")
                            }
                        }
                        
                        HStack {
                            NavigationLink(destination: LogoffView()) {
                                Image(systemName: "rectangle.portrait.and.arrow.right")
                                Text("Sair")
                            }
                        }
                    }
                    .textCase(.uppercase)
                    .fontWeight(.semibold)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 16)
                    .foregroundColor(.white)

                }
            }
        }
    }
}

struct MenuListView_Previews: PreviewProvider {
    static var previews: some View {
        MenuListView()
    }
}

