//
//  CardView.swift
//  ChallengeMvp
//
//  Created by Cicero Nascimento on 04/05/22.
//

import SwiftUI

struct CardConsultaView: View {
    
    
    var mes: String
    var dia: String
    var horario: String
    
    var especialidade: String
    var nome: String
    
    var body: some View {
        ZStack (alignment: .topLeading){
            Rectangle()
                .foregroundColor(.white)
            
            
            HStack {
                VStack(alignment: .center, spacing: 0) {
                    Text(mes)
                        .font(.headline)
                        .lineLimit(1)
                        .foregroundColor(.white)
                    Text(dia)
    //                    .font(.title)
                        .font(.system(size: 40))
                        .lineLimit(3)
                        .foregroundColor(.white)
                    Text("Horario")
                        .font(.caption)
                        .lineLimit(3)
                        .foregroundStyle(.white)
                        .padding(.top, 1)
                    Text(horario)
                        .lineLimit(3)
                        .foregroundStyle(.white)
                }
                .frame(maxWidth: 123, maxHeight: .infinity)
                .background(Color.GreenSpecial)
                
                VStack(alignment: .leading){
                    
                    HStack{
                        VStack{
                        Text(especialidade)
                            .font(.caption)
                            .foregroundColor(.secondary)
                            .multilineTextAlignment(.trailing)
                        Text(nome)
                            .font(.title)
                            .multilineTextAlignment(.trailing)
                        }

                    }
                }
            }
            
//            RoundedRectangle(cornerRadius: 24, style: .continuous)
//                .size(width: 358.0, height: 157.0)
//                .aspectRatio(contentMode: .fit)
//                .foregroundColor(.GreenSpecial)
                
        }.clipShape(RoundedRectangle(cornerRadius: 16))
            .frame(width: 300, height: 157, alignment: .center)
            .shadow(color: .black.opacity(0.2), radius: 15, x: 0, y: 0)
//        .accentColor(.green)
        .padding()
    }
    
}

struct CardConsultaView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CardConsultaView(mes: "JUNHO", dia: "30", horario: "09:41AM", especialidade: "Psicóloga", nome: "Jane Cooper")
            CardConsultaView(mes: "SETEMBRO", dia: "30", horario: "09:41AM", especialidade: "Clinico geral", nome: "Jane Cooper")
            CardConsultaView(mes: "DEZEMBRO", dia: "30", horario: "09:41AM", especialidade: "Dentista", nome: "Joir")
        }
        .previewLayout(.sizeThatFits)
    }
}
