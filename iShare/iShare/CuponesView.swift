//
//  CuponesView.swift
//  iShare
//
//  Created by iOS Lab on 30/04/23.
//

import SwiftUI

struct Cupon: Identifiable {
    var id = UUID()
    var icono: String
    var nombre: String
    var compania: String
    var fechaExpiracion: String
}

struct CuponesView: View
{
    let cupones = [
            Cupon(icono: "tag.fill", nombre: "Descuento 10%", compania: "Compañía 1", fechaExpiracion: "01/01/2023"),
            Cupon(icono: "gift.fill", nombre: "Regalo Gratis", compania: "Compañía 2", fechaExpiracion: "02/01/2023"),
            Cupon(icono: "creditcard.fill", nombre: "Descuento 20%", compania: "Compañía 3", fechaExpiracion: "03/01/2023")
        ]
    
    var body: some View
    {
        NavigationView {
                    List(cupones) { cupon in
                        HStack(alignment: .top) {
                            Image(systemName: cupon.icono)
                                .font(.largeTitle)
                            VStack(alignment: .leading) {
                                Text(cupon.nombre)
                                    .font(.headline)
                                Text(cupon.compania)
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                                Text("Expira el \(cupon.fechaExpiracion)")
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            }
                            Spacer()
                            Button(action: {
                                // Acción para utilizar el cupón
                            }, label: {
                                Text("Usar")
                                    .foregroundColor(.white)
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 5)
                                    .background(Color.blue)
                                    .cornerRadius(5)
                            })
                        }
                    }
                    .navigationBarTitle(Text("Cupones Disponibles"))
                }
    }
}

struct CuponesView_Previews: PreviewProvider {
    static var previews: some View {
        CuponesView()
    }
}
