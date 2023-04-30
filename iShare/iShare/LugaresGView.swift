//
//  LugaresGView.swift
//  iShare
//
//  Created by iOS Lab on 30/04/23.
//

import SwiftUI

struct Lugar: Identifiable {
    var id = UUID()
    var nombre: String
    var direccion: String
}

struct LugaresGView: View
{
    @State var lugares = [
            Lugar(nombre: "Central Park", direccion: "Manhattan, Nueva York"),
            Lugar(nombre: "Tower Bridge", direccion: "Londres, Reino Unido"),
            Lugar(nombre: "Torre Eiffel", direccion: "París, Francia"),
            Lugar(nombre: "Coliseo Romano", direccion: "Roma, Italia")
        ]
    
    var body: some View
    {
        NavigationView {
                    List {
                        ForEach(lugares) { lugar in
                            VStack(alignment: .leading) {
                                HStack {
                                    Image(systemName: "mappin.circle")
                                        .font(.title)
                                    Text(lugar.nombre)
                                        .font(.headline)
                                    Spacer()
                                }
                                Text(lugar.direccion)
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            }
                        }
                    }
                    .navigationBarTitle(Text("Lugares Favoritos"))
                }
    }
}

struct LugaresGView_Previews: PreviewProvider {
    static var previews: some View {
        LugaresGView()
    }
}
