//
//  MainMenuView.swift
//  iShare
//
//  Created by iOS Lab on 29/04/23.
//

import SwiftUI

struct MainMenuView: View
{
    var body: some View
    {
        TabView
        {
            BuscarView()
                .tabItem
                {
                    Image(systemName: "magnifyingglass")
                    Text("Buscar")
                }
            HouseMenu()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Principal")
                }
            PerfilView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Perfil")
                }
            SettingsView()
                .tabItem {
                    Image(systemName: "slider.horizontal.3")
                    Text("Configuración")
                }
        }
    }
}

struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView()
    }
}
