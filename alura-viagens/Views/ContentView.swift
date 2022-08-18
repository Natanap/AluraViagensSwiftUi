//
//  ContentView.swift
//  alura-viagens
//
//  Created by Natanael Alves Pereira on 02/08/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        GeometryReader { view in
            
            // MARK: - VStack Header
            
            VStack {
                
                List(viagens){ viagem in
                    VStack (alignment: .leading){
                        Text(viagem.titulo)
                        Image(viagem.imagem).resizable()
                            .frame( height: 125)
                        
                        HStack {
                            Text(viagem.quantidadeDeDias)
                            Spacer()
                            Text(viagem.valor)
                        }
                    }
                    
            
                }

            }
            
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
