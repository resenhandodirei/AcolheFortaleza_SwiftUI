//
//  LegalView.swift
//  AcolheFortaleza_SwiftUI
//
//  Created by Larissa Martins Correa on 05/11/24.
//

import SwiftUI

struct LegalView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    Text("Informações Legais")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.bottom, 8)
                    
                    Text("Bem-vindo à seção de Informações Legais do Acolhe Fortaleza. Aqui, você encontrará informações sobre nossos termos de uso, política de privacidade e outros direitos legais aplicáveis ao uso deste aplicativo.")
                        .font(.body)
                        .foregroundColor(.gray)
                        .padding(.bottom, 16)
                    
                    Group {
                        LegalSection(title: "Termos de Uso", description: "Ao utilizar nosso aplicativo, você concorda com nossos Termos de Uso. Estes termos detalham como você pode utilizar os serviços e conteúdos disponíveis.", link: "https://www.acolhefortaleza.com/termos-de-uso")
                        
                        LegalSection(title: "Política de Privacidade", description: "Para saber como tratamos seus dados pessoais e garantimos sua privacidade, consulte nossa Política de Privacidade.", link: "https://www.acolhefortaleza.com/politica-de-privacidade")
                        
                        LegalSection(title: "Direitos do Usuário", description: "Você possui direitos sobre seus dados e sua experiência no aplicativo. Consulte esta seção para mais informações sobre seus direitos e como exercê-los.", link: "https://www.acolhefortaleza.com/direitos-do-usuario")
                    }
                    
                    Group {
                        LegalSection(title: "Direitos Autorais e Propriedade Intelectual", description: "Todo o conteúdo e design do aplicativo são protegidos por direitos autorais. Saiba mais sobre nossos direitos de propriedade intelectual.", link: "https://www.acolhefortaleza.com/direitos-autorais")
                        
                        LegalSection(title: "Política de Cookies", description: "Utilizamos cookies para melhorar sua experiência no aplicativo. Leia sobre como utilizamos cookies e como você pode controlar suas preferências.", link: "https://www.acolhefortaleza.com/politica-de-cookies")
                        
                        LegalSection(title: "Contate o Suporte Jurídico", description: "Para dúvidas ou solicitações específicas sobre termos e políticas, entre em contato com nosso suporte jurídico.", link: "https://www.acolhefortaleza.com/contato-juridico")
                    }
                }
                .padding(.horizontal, 24)
            }
            .navigationTitle("Jurídico")
        }
    }
}

struct LegalSection: View {
    let title: String
    let description: String
    let link: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundColor(.yellowSecondary)
            
            Text(description)
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Link("Saiba Mais", destination: URL(string: link)!)
                .font(.subheadline)
                .foregroundColor(.blue)
                .padding(.top, 4)
        }
        .padding(.vertical, 12)
        .background(Color(.systemGray6))
        .cornerRadius(10)
    }
}

#Preview {
    LegalView()
}
