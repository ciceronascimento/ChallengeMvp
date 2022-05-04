//
//  ContentView.swift
//  TestComponents
//
//  Created by Cicero Nascimento on 03/05/22.
//

import SwiftUI

extension Color{
    static let GreenSpecial = Color("GreenSpecial")
}

struct ContentView: View {
    

    var body: some View {
        TabView {
            SaudeView()
//                .badge(10)
                .tabItem {
                    Image(systemName: "waveform.path.ecg")
                    Text("Saúde")
                }
            NoticiasView()
                .tabItem {
                    Image(systemName: "newspaper")
                    Text("Notícias")
                }
            OcorrenciasView()
                .tabItem {
                    Image(systemName: "highlighter")
                    Text("Ocorrências")
                }
            Text("Perfil")
                .tabItem {
                    Image(systemName: "person")
                    Text("Perfil")
                }
        }
        .accentColor(.GreenSpecial)
        .font(.headline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
