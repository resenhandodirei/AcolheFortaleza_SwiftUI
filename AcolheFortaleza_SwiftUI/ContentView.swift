//
//  ContentView.swift
//  AcolheFortaleza_SwiftUI
//
//  Created by Larissa Martins Correa on 12/09/24.
//

import SwiftUI

struct ContentView: View {
    @State private var rotation: Double = 0

    var body: some View {
        ZStack {
            // Fundo amarelo que preenche toda a tela
            Color.yellowPrimary
                .edgesIgnoringSafeArea(.all)

            VStack {
                // O texto centralizado
                VStack(spacing: 8) {
                    Text("Bem-vindo(a/e) ao")
                        .textCase(.uppercase)
                        .fontDesign(.serif)
                        .fontWeight(.light)
                        .foregroundColor(.white)
                        .font(.title3)
                    Text("Acolhe")
                        .font(.system(size: 48, weight: .bold, design: .serif)) // Fonte aumentada
                        .minimumScaleFactor(0.4) // Permite que a fonte seja reduzida se necessário
                        .fontDesign(.serif)
                        .fontWeight(.bold)
                        .font(.title)
                        .foregroundColor(.white)
                    
                    Text("Fortaleza")
                        .textCase(.uppercase)
                        .fontDesign(.serif)
                        .fontWeight(.semibold)
                        .padding(.bottom, 80)
                        .foregroundColor(.white)
                        .font(.title3)
            
                    
                    Text("Acessar")
                        .frame(width: 150, height: 50)
                        .background(.white)
                        .cornerRadius(150)
                        .foregroundColor(.yellowSecondary)
                        .fontWeight(.semibold)
                        .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                        .padding(.top, 40)


                }
                .padding()
                .background(Color.clear)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                

                
                Spacer() // Para empurrar a logo para baixo

                // Imagem da logo
                Image(.logoPref)
                    .padding(.bottom, 20) // Adiciona algum espaçamento na parte inferior da tela
            }
            
            
        }
    }
}



#Preview {
    ContentView()
}
