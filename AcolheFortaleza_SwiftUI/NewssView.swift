//
//  NewssView.swift
//  AcolheFortaleza_SwiftUI
//
//  Created by Larissa Martins Correa on 01/11/24.
//


import SwiftUI

struct NewssView: View {
    let tags = ["Educação", "Atendimento Psicológico", "Saúde"]
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "newspaper.fill")
                    .font(.system(size: 36)) // Aumenta o tamanho do ícone
                    .foregroundColor(.yellowSecondary)
                
                Spacer()
                
                VStack(alignment: .leading) {
                    Text("Acolhe")
                        .font(.system(size: 32, weight: .bold, design: .serif))
                        .minimumScaleFactor(0.5)
                        .foregroundColor(.yellowSecondary)
                    
                    Text("Fortaleza")
                        .textCase(.uppercase)
                        .font(.system(size: 24, weight: .semibold, design: .serif))
                        .foregroundColor(.yellowSecondary)
                }
            }
            .padding(.horizontal, 24)
            
            HStack {
                Text("saúde")
                    .frame(width: 60, height: 36)
                    .background(Color.yellowSecondary)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                
                Text(">")
                    .foregroundColor(.gray)
                
                
                Text("notícias")
                    .foregroundColor(.gray)
                
            }.padding(.horizontal, 16)
            
            ScrollView {
                VStack(alignment: .leading) {
                    Rectangle()
                        .fill(Color.yellow) // Define a cor de fundo
                        .frame(width: 390, height: 300) // Define o tamanho do retângulo
                        .cornerRadius(8)
                    
                    VStack(alignment: .leading) {
                        Text("29 de outubro de 2024")
                            .foregroundColor(.gray)
                        
                        Spacer()
                        
                        Text("Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...")
                            .textCase(.uppercase)
                            .foregroundColor(.gray)
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        Text("There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...")
                            .foregroundColor(.gray)
                            .fontDesign(.default)
                    }.padding(.horizontal, 12)
                    
                    
                }.padding(.horizontal, 16)
                
                VStack(alignment: .leading) {
                    HStack {
                        Image(systemName:  "square.and.arrow.up")
                        
                        Image(systemName: "doc")
                    }.foregroundColor(.yellowSecondary)
                        .padding(.horizontal, 28)
                        .padding(.vertical, 12)
                    
                    
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed venenatis rhoncus arcu, vitae tempor magna mattis in. Aliquam eget leo nibh. Aenean mauris leo, vulputate in aliquam id, viverra et dolor. Suspendisse efficitur laoreet mattis. Suspendisse luctus bibendum risus id posuere. Proin pretium quis sapien eget posuere. Nullam sed mollis dui. Phasellus facilisis non nisl at varius. Suspendisse in euismod enim, feugiat mattis sapien. Vestibulum faucibus imperdiet ipsum, non pretium nunc egestas nec. Aliquam tincidunt nulla nibh, fringilla dapibus arcu blandit rutrum. Praesent posuere malesuada metus, eu venenatis tortor tincidunt et. Maecenas id imperdiet velit. Aliquam neque tellus, volutpat nec dui non, hendrerit molestie sapien. Sed vel posuere purus. Integer accumsan nibh ut lorem bibendum scelerisque. Quisque eget justo bibendum, venenatis nunc nec, placerat velit. Vivamus nec eros consequat, vehicula tellus quis, cursus risus. Donec dictum rhoncus turpis a iaculis. Ut viverra lacus ac justo congue, vitae rutrum augue tincidunt. Maecenas efficitur, libero et egestas molestie, lacus metus mattis massa, quis congue dui sapien id ante. Morbi tincidunt, magna in auctor tristique, ante ex fermentum risus, eu scelerisque sem purus et tellus. Fusce maximus augue eu augue rutrum aliquet. Nulla malesuada justo ut nulla laoreet, id auctor ligula malesuada. Mauris placerat ante quis neque pellentesque venenatis. Mauris et lobortis diam, eget semper mauris. Cras fermentum, justo et congue feugiat, eros nibh tincidunt urna, ac gravida eros lacus nec orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi congue ante non sapien iaculis dapibus. Phasellus vel felis mi.")
                        .padding(.horizontal, 28)
                        .foregroundColor(.gray)
                    
                    HStack {
                        
                        Link("Vejas as medidas", destination: URL(string: "https://www.acolhefortaleza.com")!)
                            .font(.subheadline)
                            .foregroundColor(.blue) // Cor do texto do link
                            .padding()
                        
                        
                        Image(systemName:  "square.and.arrow.up")
                            .foregroundColor(.yellowSecondary)
                    }.padding(.horizontal, 16)
                    
                    
                    HStack {
                        
                        Link("Solicitar atendimento psicológico", destination: URL(string: "https://www.acolhefortaleza.com")!)
                            .font(.subheadline)
                            .foregroundColor(.blue) // Cor do texto do link
                            .padding()
                        
                        
                        Image(systemName:  "square.and.arrow.up")
                            .foregroundColor(.yellowSecondary)
                    }.padding(.horizontal, 16)
                    
                    VStack(alignment: .leading) {
                        Text("Para denunciar")
                            .foregroundColor(.gray)
                            .fontWeight(.semibold)
                        
                        
                        Text("Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...")
                            .foregroundColor(.gray)
                            .font(.subheadline)
                        
                        HStack {
                            
                            Link("Plataforma de denúncias do governo Federal", destination: URL(string: "https://www.acolhefortaleza.com")!)
                                .font(.subheadline)
                                .foregroundColor(.blue) // Cor do texto do link
                                .padding()
                            
                            
                            Image(systemName:  "square.and.arrow.up")
                                .foregroundColor(.yellowSecondary)
                            
                            
                        }
                        
                        HStack {
                            Image(systemName: "magnifyingglass")
                            
                            ForEach(tags, id: \.self) { tag in
                                HStack {
                                    Text(tag)
                                        .textCase(.lowercase)
                                        .foregroundColor(.white)
                                        .padding(.vertical, 6)
                                        .background(Color.yellowSecondary) // Cor de fundo para a tag
                                        .cornerRadius(8) // Bordas arredondadas
                                }
                                // Espaçamento horizontal da tag
                                .padding(.vertical, 4) // Espaçamento vertical da tag
                            }
                            
                        }.padding(.horizontal, 28)
                        
                       
                        
                    }.padding(.horizontal, 28)
                    
                    
                    
                }
            }
        }
    }
    

    
    struct NewssView_Previews: PreviewProvider {
        static var previews: some View {
            NewssView() // Aqui você chama a ArticlesView para visualização
        }
    }
}
