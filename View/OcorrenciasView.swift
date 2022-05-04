//
//  OcorrenciasView.swift
//  TestComponents
//
//  Created by Cicero Nascimento on 03/05/22.
//

import SwiftUI

struct OcorrenciasView: View {
    @State private var dataOcorrencia = Date()
    @State private var horaOcorrencia = Date()
    
    //alert
    
    @State private var showingAlert: Bool = false
    
    //navigation
    
    let selectedDisplayMode: NavigationBarItem.TitleDisplayMode = .large
    
    let navigationTitle: String = "Relatar Ocorrência"
    
    //pickers
    
    let departamento = ["Diretoria", "Apoio psicológico "]
    @State private var departamentoSelecionado = ""
    
    let turma = ["Turma 1", "Turma 2"]
    @State private var turmaSelecionada = ""
    
    let dataHora = ["13:10 30/01/1992", "13:10 30/01/2002"]
    @State private var dataHoraSelecionada = "               "
    
    //textfield
    @State private var text: String = ""
    private var selectedKeyboard: UIKeyboardType = .default
    
    init(){
        let navBarAppearance = UINavigationBar.appearance()
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.init(red: 0, green: 81 / 255, blue: 15 / 255, alpha: 1)]
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.init(red: 0, green: 81 / 255, blue: 15 / 255, alpha: 1)]
    }
    
    
    
    var body: some View {

        
        NavigationView{
            
            Form{
                Picker("Selecione o departamento", selection: $departamentoSelecionado) {
                    ForEach(departamento, id: \.self){
                        Text($0)
                    }
                }
                
                Picker("Selecione a turma", selection: $turmaSelecionada) {
                    ForEach(turma, id: \.self){
                        Text($0)
                    }
                }
                
                DatePicker(selection: $dataOcorrencia, in: ...Date(), displayedComponents: .date, label: {
                    Text("Selecione a data")
                })
                
                DatePicker("Time", selection: $horaOcorrencia, displayedComponents: .hourAndMinute)
                
                
                
                Section{
                    Label("Digite aqui o que aconteceu:", systemImage: "highlighter")
                    TextEditor(text: $text)
                        .frame(height: 286)
                }
                

            }
            .navigationTitle(navigationTitle)
            .navigationBarTitleDisplayMode(selectedDisplayMode)
            .toolbar{
                Button(action: {
                    showingAlert = true
                }) {
                    Text("Salvar")
//                    print("Enviado")
                }.alert(Text("Sua ocorrencia foi enviada!"), isPresented: $showingAlert,
                        actions: {
                    Button("Fechar") {}
                }, message: {
                    Text("Obrigado por ajudar ifce a ser um lugar melhor!")
                })
            }
        }
    }
}

struct OcorrenciasView_Previews: PreviewProvider {
    static var previews: some View {
        OcorrenciasView()
    }
}
