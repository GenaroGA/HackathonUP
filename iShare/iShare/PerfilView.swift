//
//  PerfilView.swift
//  iShare
//
//  Created by iOS Lab on 29/04/23.
//

import SwiftUI

struct Publicacion: Identifiable {
    var id = UUID()
    var icono: String
    var titulo: String
    var fecha: String
}

struct PerfilView: View
{
    let publicaciones = [
            Publicacion(icono: "person.circle", titulo: "Publicación 1", fecha: "01/01/2022"),
            Publicacion(icono: "person.circle", titulo: "Publicación 2", fecha: "02/01/2022"),
            Publicacion(icono: "person.circle", titulo: "Publicación 3", fecha: "03/01/2022")
        ]
        @State var password: String = ""
    
    var body: some View
    {
        NavigationView {
                    VStack(alignment: .center, spacing: 20) {
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .padding(.bottom, 20)
                        Text("Nombre de usuario")
                            .font(.title)
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Usuario: usuario123")
                            SecureField("Contraseña", text: $password)
                        }
                        .padding(.bottom, 20)
                        NavigationLink(destination: CuponesView()) {
                            Text("Cupones")
                                .font(.headline)
                        }
                        List(publicaciones) { publicacion in
                            HStack(alignment: .top) {
                                Image(systemName: publicacion.icono)
                                    .font(.largeTitle)
                                VStack(alignment: .leading) {
                                    Text(publicacion.titulo)
                                        .font(.headline)
                                    Text(publicacion.fecha)
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)
                                }
                            }
                        }
                        Spacer()
                    }
                    .padding()
                    .navigationBarTitle(Text("Perfil"))
                }
    }
}

struct PerfilView_Previews: PreviewProvider {
    static var previews: some View {
        PerfilView()
    }
}
