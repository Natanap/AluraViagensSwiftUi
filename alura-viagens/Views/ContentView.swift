//
//  ContentView.swift
//  alura-viagens
//
//  Created by Natanael Alves Pereira on 02/08/22.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        NavigationView{
            GeometryReader { view in
                
                // MARK: - VStack Header
                
                VStack {
                    HeaderView()
                        .frame(width: view.size.width, height: self.horizontalSizeClass == .compact ? 200 : 310, alignment: .top)
                    List(viagens){ viagem in
                        NavigationLink(destination: MapaView(coordenada: viagem.localizacao).navigationTitle("Localização")) {
                            CelulaViagemView(viagem: viagem)
                        }
                    }.navigationBarTitle("")

                }
                
            }
            .edgesIgnoringSafeArea(.all)
        }.navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
