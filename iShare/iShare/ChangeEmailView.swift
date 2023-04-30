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
        VStack(alignment: .center) {
            TextField("Correo electrónico antiguo", text: $oldEmail)
                .padding(.all)
            TextField("Nuevo correo electrónico", text: $newEmail)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Button("Confirmar") {
                // Agrega aquí la lógica para cambiar el correo electrónico
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Spacer()
        }
    }
}
struct ChangeEmailView_Previews: PreviewProvider {
    static var previews: some View {
        ChangeEmailView()
    }
}
