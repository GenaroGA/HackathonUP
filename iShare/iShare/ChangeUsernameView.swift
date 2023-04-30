//
//  ChangeUsernameView.swift
//  iShare
//
//  Created by iOS Lab on 30/04/23.
//

import SwiftUI

struct ChangeUsernameView: View {
    
    @State private var oldUsername = ""
    @State private var newUsername = ""
    
    var body: some View {
        Form {
            Section(header: Text("Cambio de nombre de usuario")) {
                TextField("Nombre de usuario antiguo", text: $oldUsername)
                TextField("Nuevo nombre de usuario", text: $newUsername)
            }
            Section {
                Button("Confirmar") {
                    // Agrega aquí la lógica para cambiar el nombre de usuario
                }
            }
        }
        .navigationTitle("Cambiar nombre de usuario")
    }
}



struct ChangeUsernameView_Previews: PreviewProvider {
    static var previews: some View {
        ChangeUsernameView()
    }
}
