//
//  CardView.swift
//  ChallengeMvp
//
//  Created by Cicero Nascimento on 04/05/22.
//

import SwiftUI

struct CardConsultaView: View {
    
    var imagem: String
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 24, style: .continuous)
                .size(width: 330.0, height: 157.0)
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.GreenSpecial)
                
            
        }
//        .accentColor(.green)
        .padding()
    }
}

struct CardConsultaView_Previews: PreviewProvider {
    static var previews: some View {
        CardConsultaView(imagem: "imagemteste")
    }
}
