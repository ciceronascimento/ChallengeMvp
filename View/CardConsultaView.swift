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
        ZStack (alignment: .topLeading){
            Rectangle()
                .foregroundColor(.white)
            
            Rectangle()
                .fill(Color.GreenSpecial)
                .frame(minWidth: 0, maxWidth: 123, maxHeight: 157, alignment: .top)
            VStack(alignment: .leading) {
                Text("DATA")
                    .font(.headline)
                    .lineLimit(3)
                    .foregroundColor(.white)
                    .padding(.horizontal, 40.0)
                    .padding(.vertical)

                Text("30")
//                    .font(.title)
                    .font(.system(size: 40))
                    .lineLimit(3)
                    .foregroundColor(.white)
                    .padding(.top, -20)
                    .padding(.horizontal, 35.0)
                    
            }.frame(alignment: .center)

//            RoundedRectangle(cornerRadius: 24, style: .continuous)
//                .size(width: 358.0, height: 157.0)
//                .aspectRatio(contentMode: .fit)
//                .foregroundColor(.GreenSpecial)
                
        }.clipShape(RoundedRectangle(cornerRadius: 16))
            .frame(width: 300, height: 157, alignment: .center)
            .shadow(radius: 10)
//        .accentColor(.green)
//        .padding()
    }
}

struct CardConsultaView_Previews: PreviewProvider {
    static var previews: some View {
        CardConsultaView(imagem: "imagemteste")
    }
}
