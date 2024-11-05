//
//  AboutAcolheView.swift
//  AcolheFortaleza_SwiftUI
//
//  Created by Larissa Martins Correa on 04/11/24.
//

import SwiftUI

struct AboutAcolheView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                // Cabeçalho
                VStack {
                    Image(systemName: "heart.fill")
                        .font(.system(size: 48))
                        .foregroundColor(.yellowSecondary)
                        .padding(.bottom, 8)
                    
                    Text("Sobre o Acolhe Fortaleza")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.yellowPrimary)
                        .multilineTextAlignment(.center)
                }
                .padding(.top, 20)
                
                // Descrição do aplicativo
                VStack(alignment: .leading, spacing: 12) {
                    Text("Nossa Missão")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(.yellowSecondary)
                    
                    Text("O Acolhe Fortaleza é uma iniciativa voltada para oferecer apoio e informações à comunidade, especialmente nas áreas de saúde, educação e atendimento psicológico. Nosso objetivo é promover o bem-estar e garantir que todos tenham acesso aos recursos de que precisam.")
                        .foregroundColor(.gray)
                        .lineSpacing(4)
                }
                .padding(.horizontal, 16)
                
                // Informações sobre o desenvolvimento
                VStack(alignment: .leading, spacing: 12) {
                    Text("Desenvolvido por")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(.yellowSecondary)
                    
                    Text("Este aplicativo foi desenvolvido com carinho pela desenvolvedora Larissa Corrêa durante o período da residência tecnológica no laboratório iOs do IREDE com o objetivo praticar e aprimorar os conhecimentos obtidos, tendo, por último, a finalidade de criar uma plataforma acessível e segura para a comunidade.")
                        .foregroundColor(.gray)
                        .lineSpacing(4)
                    
                    HStack(spacing: 12) {
                        Image(systemName: "person.fill")
                            .foregroundColor(.yellowPrimary)
                        Text("Larissa Correa - Desenvolvedora iOS")
                            .foregroundColor(.gray)
                    }
                }
                .padding(.horizontal, 16)
                
                // Links úteis e contato
                VStack(alignment: .leading, spacing: 12) {
                    Text("Links Úteis")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(.yellowSecondary)
                    
                    Link("Site Oficial do Acolhe Fortaleza", destination: URL(string: "https://www.acolhefortaleza.com")!)
                        .font(.subheadline)
                        .foregroundColor(.blue)
                    
                    Link("Instagram", destination: URL(string: "https://www.instagram.com/acolhefortaleza")!)
                        .font(.subheadline)
                        .foregroundColor(.blue)
                    
                    Link("Fale Conosco", destination: URL(string: "mailto:contato@acolhefortaleza.com")!)
                        .font(.subheadline)
                        .foregroundColor(.blue)
                }
                .padding(.horizontal, 16)
                
                Spacer() 
            }
            .padding(.vertical, 20)
        }
        .background(Color(.systemGray6)) // Cor de fundo para a tela toda
        .navigationTitle("Sobre")
    }
}



#Preview {
    AboutAcolheView()
}
