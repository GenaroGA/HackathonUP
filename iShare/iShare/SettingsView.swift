//
//  SettingsView.swift
//  iShare
//
//  Created by iOS Lab on 29/04/23.
//

import SwiftUI

struct Settings: Identifiable
{
    var id = UUID()
    
    var color: Color
    var icono: String
    var text: String
    var subText: String
}

struct SettingsView: View
{
    
    let settings = [Settings(color: .orange, icono: "airplane", text: "Airplane Mode", subText: ""), Settings(color: .blue, icono: "wifi", text: "Wifi", subText: "On")]
    
    var body: some View
    {
        ZStack
        {
            Color(.white)
            Image(systemName: "slider.horizontal.3")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
