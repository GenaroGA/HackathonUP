//
//  PerfilView.swift
//  iShare
//
//  Created by iOS Lab on 29/04/23.
//

import SwiftUI

struct PerfilView: View
{
    var body: some View
    {
        ZStack
        {
            Color(.cyan)
            Image(systemName: "person.fill")
        }
    }
}

struct PerfilView_Previews: PreviewProvider {
    static var previews: some View {
        PerfilView()
    }
}
