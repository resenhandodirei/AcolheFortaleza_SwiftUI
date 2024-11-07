//
//  RedeView.swift
//  AcolheFortaleza_SwiftUI
//
//  Created by Larissa Martins Correa on 05/11/24.
//

import SwiftUI

struct UserWithHeartView: View {
    var body: some View {
        ZStack {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.white)
            
            Image(systemName: "heart.fill")
                .font(.system(size: 16))
                .foregroundColor(.red)
                .offset(x: 8, y: 8)
        }
    }
}

struct RedeView: View {
    let categories = ["Saúde", "Capacitação", "Juventude", "Justiça", "Esporte"]
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                // Navbar fixada no topo
                headerView
                
                Spacer()
                
                ScrollView {
                    VStack(alignment: .leading, spacing: 16) {
                        informationSection
                        
                        // Replicando as seções de serviço para cada categoria
                        ForEach(categories, id: \.self) { category in
                            ServiceCategorySection(title: category)
                                .padding(.bottom, 16) // Espaçamento entre seções
                        }
                    }
                    .padding()
                }
            }
            .edgesIgnoringSafeArea(.top)
            .background(Color(.systemBackground))
        }
    }
    
    // Header section
    private var headerView: some View {
        Rectangle()
            .fill(Color.yellowSecondary)
            .frame(height: 150)
            .overlay(
                HStack {
                    NavigationLink(destination: MenuListView()) {
                        Image(systemName: "chevron.backward")
                            .resizable()
                            .frame(width: 24, height: 32)
                            .foregroundColor(.white)
                            .padding(.leading, 16)
                    }
                    
                    UserWithHeartView()
                    
                    VStack(alignment: .leading) {
                        Text("Rede de atenção psicossocial")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .textCase(.uppercase)
                        
                        Text("Como podemos ajudar?")
                            .font(.subheadline)
                            .foregroundColor(.white)
                    }
                    .padding(.leading, 16)
                }
                .padding(.top, 56)
                .padding(.trailing, 16)
            )
    }
    
    // Information section
    private var informationSection: some View {
        HStack(alignment: .top, spacing: 8) {
            Image(systemName: "info.circle.fill")
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.yellowSecondary)
            
            Text("Lorem ipsum dolor sit amet. Et dolorum omnis qui minima quasi qui praesentium libero ut magni quia. Est vero commodi aut modi quasi At deserunt cupiditate. Est doloribus magnam aut maxime doloribus sed libero odit est voluptatem repellendus?")
                .font(.body)
                .foregroundColor(.primary)
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 8)
                .strokeBorder(Color.gray, lineWidth: 1)
        )
    }
}

#Preview {
    RedeView()
}
