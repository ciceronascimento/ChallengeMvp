//
//  CardView.swift
//  ChallengeMvp
//
//  Created by Cicero Nascimento on 04/05/22.
//

import SwiftUI

struct CardView: View {
    
    var imagem: String
    var categoria: String
    var titulo: String
    var autor: String
    
    var body: some View {
        VStack {
            Image(imagem)
                .resizable()
                .aspectRatio(contentMode: .fit)
            HStack{
                VStack(alignment: .leading){
                    Text(categoria)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text(titulo)
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(.black)
                        .lineLimit(3)
                    Text(autor.uppercased())
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                .layoutPriority(100)
                Spacer()
            }
            .padding()
        }
        .background(Color(.white))
        .cornerRadius(10)
        .shadow(radius: 16)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB, red: 150 / 255, green: 150 / 255, blue: 150 / 255,  opacity: 0.1), lineWidth: 1)
                
                
        )
        .padding([.top, .horizontal])
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(imagem: "imagemteste", categoria: "SwiftUI", titulo: "Inscrições abertas para Programa de Bolsa Permanência", autor: "Escrito por Cláudia monteiro")
    }
}
