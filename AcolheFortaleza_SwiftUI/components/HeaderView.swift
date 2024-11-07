//
//  HeaderView.swift
//  AcolheFortaleza_SwiftUI
//
//  Created by Larissa Martins Correa on 06/11/24.
//
import SwiftUI

struct HeaderView: View {
    let icon: String
    let title: String
    let subtitle: String
    
    var body: some View {
        VStack {
            // Cabeçalho
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.yellowPrimary, Color.yellowSecondary]),
                               startPoint: .top,
                               endPoint: .bottom)
                    .edgesIgnoringSafeArea(.top)
                
                HStack {
                    Image(systemName: "chevron.backward")
                        .resizable()
                        .frame(width: 24, height: 32)
                        .foregroundColor(.white)
                        .padding(.horizontal, 16)
                    
                    Image(systemName: icon)
                        .resizable()
                        .frame(width: 34, height: 42)
                        .foregroundColor(.white)
                    
                    VStack(alignment: .leading) {
                        Text(title)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.top, 20)
                            .textCase(.uppercase)
                        
                        Text(subtitle)
                            .font(.subheadline)
                            .foregroundColor(.white)
                            .padding(.bottom, 20)
                    }
                }
            }
            .frame(height: 120)
            
            Spacer()
        }
    }
}


#Preview {
    HeaderView(icon: "newspaper.fill", title: "Notícias", subtitle: "Fique por dentro das novidades e atualizações.")
}


