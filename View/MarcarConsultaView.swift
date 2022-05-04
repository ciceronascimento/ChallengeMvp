//
//  MarcarConsultaView.swift
//  TestComponents
//
//  Created by Cicero Nascimento on 03/05/22.
//

import SwiftUI

struct MarcarConsultaView: View {
    
    @State private var showingAlert = false
    
    @State private var dataConsulta = Date()
    @State private var horaConsulta = Date()
    
    let especialidade = ["Psicologia", "Odontologia", "Clínico geral"]
    @State private var especialidadeSelecionada = ""
    
    let colaborador = ["Jane Cooper"]
    @State private var colaboradorSelecionado = ""
    
    
    
    var body: some View {
        NavigationView{
            Form{
                Picker("Especialidade", selection: $especialidadeSelecionada) {
                    ForEach(especialidade, id: \.self){
                        Text($0)
                    }
                }.pickerStyle(DefaultPickerStyle())
                
                Picker("Colaborador", selection: $colaboradorSelecionado) {
                    ForEach(colaborador, id: \.self){
                        Text($0)
                    }
                }.pickerStyle(DefaultPickerStyle())
                
                DatePicker("Data", selection: $horaConsulta)
                    .datePickerStyle(GraphicalDatePickerStyle())
                
            }
        }
        .toolbar{
            Button(action: {
                showingAlert = true
            }) {
                Text("Salvar")
//                    print("Enviado")
            }.alert(Text("Sua consulta foi marcada!"), isPresented: $showingAlert,
                    actions: {
                Button("Fechar") {}
            }, message: {
                Text("Aguardamos ansiosamente a sua presença!")
            })
        }
    }
}

struct MarcarConsultaView_Previews: PreviewProvider {
    static var previews: some View {
        MarcarConsultaView()
    }
}
