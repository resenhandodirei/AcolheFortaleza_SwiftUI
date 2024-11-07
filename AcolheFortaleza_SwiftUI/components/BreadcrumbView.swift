//
//  BreadcrumbView.swift
//  AcolheFortaleza_SwiftUI
//
//  Created by Larissa Martins Correa on 06/11/24.
//
import SwiftUI

struct BreadcrumbView: View {
    let path: [String]
    
    var body: some View {
        HStack(spacing: 4) {
            ForEach(Array(path.enumerated()), id: \.offset) { index, title in
                if index > 0 {
                    Image(systemName: "chevron.right")
                        .resizable()
                        .frame(width: 8, height: 8)
                        .foregroundColor(.yellowSecondary)
                }
                
                if index == path.count - 1 {
                    Text(title)
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(.yellowSecondary)
                } else {
                    NavigationLink(destination: Text("\(title) View")) {
                        Text(title)
                            .font(.caption)
                            .foregroundColor(.yellowSecondary)
                    }
                }
            }
        }
        .padding(.vertical, 4)
        .padding(.horizontal, 8)
        .background(Color.clear)
        .overlay(
            RoundedRectangle(cornerRadius: 4)
                .stroke(Color.yellow, lineWidth: 1)
        )
    }
}

struct BreadcrumbExampleView: View {
    let breadcrumbPath = ["Serviços", "Rede de Atenção Psicossocial", "Álcool e Drogas", "Acolhimento do CIRAD"]
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 16) {
                BreadcrumbView(path: breadcrumbPath)
                
                Spacer()
                Text("Conteúdo da tela atual")
                    .font(.body)
            }
            .padding()
        }
    }
}

#Preview {
    BreadcrumbExampleView()
}
