//
//  ChangePasswordView.swift
//  iShare
//
//  Created by iOS Lab on 30/04/23.
//

import SwiftUI

struct ChangePasswordView: View {
    
    @State private var oldPassword = ""
    @State private var newPassword = ""

    var body: some View {
        Form {
            Section(header: Text("Cambio de contraseña")) {
                TextField("Nombre de usuario antiguo", text: $oldPassword)
                TextField("Nuevo nombre de usuario", text: $newPassword)
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

struct ChangePasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ChangePasswordView()
    }
}
