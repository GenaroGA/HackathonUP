//
//  HouseMenu.swift
//  iShare
//
//  Created by iOS Lab on 29/04/23.
//

import SwiftUI

struct HouseMenu: View
{
    var body: some View
    {
        ZStack
        {
            Color(.systemPink)
            Image(systemName: "house.fill")
        }
    }
}

struct HouseMenu_Previews: PreviewProvider {
    static var previews: some View {
        HouseMenu()
    }
}
