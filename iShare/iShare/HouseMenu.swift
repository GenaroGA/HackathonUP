//
//  HouseMenu.swift
//  iShare
//
//  Created by iOS Lab on 29/04/23.
//

import SwiftUI

struct HouseMenu: View
{
    let publicaciones = ["Publicación 1", "Publicación 2", "Publicación 3", "Publicación 4", "Publicación 5", "Publicación 6", "Publicación 7", "Publicación 8"]
    
    var body: some View
    {
        NavigationView {
                    List {
                        ForEach(0..<publicaciones.count) { index in
                            VStack(alignment: .leading) {
                                Image(systemName: "person.circle")
                                    .font(.largeTitle)
                                Text("Nombre de usuario")
                                    .font(.headline)
                                Text(publicaciones[index])
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                                    .padding(.top, 5)
                            }
                        }
                    }
                    .navigationBarTitle(Text("Publicaciones"))
                }
    }
}

struct HouseMenu_Previews: PreviewProvider {
    static var previews: some View {
        HouseMenu()
    }
}
