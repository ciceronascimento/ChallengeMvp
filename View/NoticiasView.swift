//
//  NoticiasView.swift
//  TestComponents
//
//  Created by Cicero Nascimento on 03/05/22.
//

import SwiftUI

struct NoticiasView: View {
    let selectedDisplayMode: NavigationBarItem.TitleDisplayMode = .large
    let navigationTitle: String = "Notícias"
    
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
        }
    }
}

struct NoticiasView_Previews: PreviewProvider {
    static var previews: some View {
        NoticiasView()
    }
}
