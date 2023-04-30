//
//  ChangeEmailView.swift
//  iShare
//
//  Created by iOS Lab on 30/04/23.
//

import SwiftUI

struct ChangeEmailView: View {
    
    @State private var oldEmail = ""
    @State private var newEmail = ""

    var body: some View {
        Form {
            Section(header: Text("Cambio de correo")) {
                TextField("Correo antiguo", text: $oldEmail)
                TextField("Nuevo correo", text: $newEmail)
            }
            Section {
                Button("Confirmar") {
                    // Agrega aquí la lógica para cambiar el nombre de usuario
                }
            }
        }
        .navigationTitle("Cambiar correo")
    }
}
struct ChangeEmailView_Previews: PreviewProvider {
    static var previews: some View {
        ChangeEmailView()
    }
}
