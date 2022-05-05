//
//  SaudeView.swift
//  TestComponents
//
//  Created by Cicero Nascimento on 03/05/22.
//

import SwiftUI

struct SaudeView: View {
    
    @State var text: String = ""
    let selectedDisplayMode: NavigationBarItem.TitleDisplayMode = .large
    let navigationTitle: String = "Consultas"
    
    init(){
        let navBarAppearance = UINavigationBar.appearance()
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.init(red: 0, green: 81 / 255, blue: 15 / 255, alpha: 1)]
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.init(red: 0, green: 81 / 255, blue: 15 / 255, alpha: 1)]
    }
    
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical){
                CardConsultaView(mes: "JUNHO", dia: "30", horario: "09:30 AM", especialidade: "Psicóloga", nome: "Jane Cooper")
//                .padding()
                
                CardConsultaView(mes: "AGOSTO", dia: "30", horario: "08:00 AM", especialidade: "Clínico geral", nome: "Dr Calisto")
                
//                    .padding()
                CardConsultaView(mes: "SETEMBRO", dia: "22", horario: "10:41AM", especialidade: "Dentista", nome: "PH")
//                    .padding()
            }
            .padding([.top])
            .searchable(text: $text, placement: .navigationBarDrawer(displayMode: .always))
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
