//
//  SaudeView.swift
//  TestComponents
//
//  Created by Cicero Nascimento on 03/05/22.
//

import SwiftUI

struct SaudeView: View {
    
    let selectedDisplayMode: NavigationBarItem.TitleDisplayMode = .large
    let navigationTitle: String = "Consultas"
    
    init(){
        let navBarAppearance = UINavigationBar.appearance()
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.init(red: 0, green: 81 / 255, blue: 15 / 255, alpha: 1)]
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.init(red: 0, green: 81 / 255, blue: 15 / 255, alpha: 1)]
    }
    
    
    var body: some View {
        NavigationView{
            Form{
                Text("Barra search aqui")
                Section(){
                    Text("Cards começam aqui")
                }
            }
            .navigationTitle(navigationTitle)
            .navigationBarTitleDisplayMode(selectedDisplayMode)
            .toolbar{
                NavigationLink(destination:
                    MarcarConsultaView()
                        .navigationTitle("Marcar consulta")
                        .navigationBarTitleDisplayMode(.inline)
                ) {
                    Image(systemName: "plus")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                }
        
            }
        }
    }
}

struct SaudeView_Previews: PreviewProvider {
    static var previews: some View {
        SaudeView()
    }
}
