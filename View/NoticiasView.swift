//
//  NoticiasView.swift
//  TestComponents
//
//  Created by Cicero Nascimento on 03/05/22.
//

import SwiftUI

struct NoticiasView: View {
    @State var text: String = ""
    
    let selectedDisplayMode: NavigationBarItem.TitleDisplayMode = .large
    let navigationTitle: String = "Notícias"
    
    init(){
        let navBarAppearance = UINavigationBar.appearance()
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.init(red: 0, green: 81 / 255, blue: 15 / 255, alpha: 1)]
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.init(red: 0, green: 81 / 255, blue: 15 / 255, alpha: 1)]
    }
    
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical){
                Section(){
                    CardView(imagem: "imagemteste", categoria: "Oportunidade", titulo: "Inscrições abertas para Programa de Bolsa Permanência", autor: "Escrito por Cláudia monteiro")
                    CardView(imagem: "imagemteste2", categoria: "E-books", titulo: "Com lançamento de obras, EDIFCE celebra novo marco", autor: "Escrito por Douglas Lima")
                }
            }
            .searchable(text: $text, placement: .navigationBarDrawer(displayMode: .always))
            .navigationTitle(navigationTitle)
            .navigationBarTitleDisplayMode(selectedDisplayMode)
            
        }
    }
}

struct NoticiasView_Previews: PreviewProvider {
    static var previews: some View {
        NoticiasView()
    }
}
