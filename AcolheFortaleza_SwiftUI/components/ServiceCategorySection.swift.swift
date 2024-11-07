//
//  ServiceCategorySection.swift.swift
//  AcolheFortaleza_SwiftUI
//
//  Created by Larissa Martins Correa on 06/11/24.
//

import SwiftUI

// Componente reutilizável para cada categoria de serviço
struct ServiceCategorySection: View {
    let title: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(title)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            VStack(spacing: 8) {
                serviceRow(name: "Serviço ou equipamento")
                serviceRow(name: "Serviço ou equipamento")
            }
            
            NavigationLink(destination: ServicesView()) {
                Text("Ver tudo")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(.yellowSecondary)
                    .frame(width: 150, height: 40)
                    .background(Color.white)
                    .cornerRadius(8)
            }
            .padding(.top, 16)
        }
        .padding()
        .background(Color.yellowSecondary)
        .cornerRadius(8)
    }
    
    // Single service row
    private func serviceRow(name: String) -> some View {
        HStack {
            Text(name)
                .font(.body)
                .foregroundColor(.white)
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .foregroundColor(.white)
        }
        .padding(8)
        .background(
            RoundedRectangle(cornerRadius: 8)
                .strokeBorder(Color.white, lineWidth: 1)
        )
    }
}
