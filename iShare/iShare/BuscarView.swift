//
//  BuscarView.swift
//  iShare
//
//  Created by iOS Lab on 29/04/23.
//

import SwiftUI

struct BuscarView: View
{
    @State private var searchText = ""
    
    var body: some View
    {
        NavigationView()
        {
            ZStack
            {
                Image("Mapa1")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFit()
                    .frame(width: 1500, height: 800)
                    .searchable(text: $searchText)
                
                    
            }
        }
    }
}

struct BuscarView_Previews: PreviewProvider {
    static var previews: some View {
        BuscarView()
    }
}
