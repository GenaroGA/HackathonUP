//
//  SettingsView.swift
//  iShare
//
//  Created by iOS Lab on 29/04/23.
//

import SwiftUI

struct SettingsView: View {
    
    @State private var isPrivateProfile = false
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Cuenta")) {
                    NavigationLink(destination: ChangeUsernameView()) {
                        Text("Cambiar nombre de usuario")
                    }
                    NavigationLink(destination: ChangeEmailView()) {
                        Text("Cambiar correo electrónico")
                    }
                    NavigationLink(destination: ChangePasswordView()) {
                        Text("Cambiar contraseña")
                    }
                }
                
                Section(header: Text("Privacidad")) {
                    Toggle(isOn: $isPrivateProfile) {
                        Text("Perfil privado")
                    }
                }
            }
            .navigationBarTitle("Configuraciones")
        }
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
