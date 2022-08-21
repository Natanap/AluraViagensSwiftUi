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
                HeaderView()
                    .frame(width: view.size.width, height: 200, alignment: .top)
                List(viagens){ viagem in
                    CelulaViagemView(viagem: viagem)
            
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
