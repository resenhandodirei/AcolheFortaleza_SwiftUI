//
//  FieldsetView.swift
//  AcolheFortaleza_SwiftUI
//
//  Created by Larissa Martins Correa on 05/11/24.
//

import SwiftUI

struct FieldsetView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Informações Pessoais")
                .font(.headline)
                .padding(.bottom, 8)

            VStack(alignment: .leading, spacing: 12) {
                HStack {
                    
                    Image(systemName: "info.circle.fill")
                        .resizable()
                        .frame(width: 32, height: 32)
                        .foregroundColor(.yellowSecondary)

                    Text("Lorem ipsum dolor sit amet. Et dolorum omnis qui minima quasi qui praesentium libero ut magni quia. Est vero commodi aut modi quasi At deserunt cupiditate. Est doloribus magnam aut maxime doloribus sed libero odit est voluptatem repellendus? ")
                }
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 8).strokeBorder(Color.gray, lineWidth: 1))
        }
        .padding()
    }
}

struct FieldsetView_Previews: PreviewProvider {
    static var previews: some View {
        FieldsetView()
    }
}
