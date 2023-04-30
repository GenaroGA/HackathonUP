//
//  ContentView.swift
//  iShare
//
//  Created by iOS Lab on 29/04/23.
//

import SwiftUI

struct ContentView: View
{
    var body: some View
    {
        NavigationStack
        {
            ZStack
            {
                Color(.black)
                    .ignoresSafeArea()
                VStack
                {
                    Image("Logo-dentro")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                    Text("iShare")
                        .font(.largeTitle)
                    HStack
                    {
                        Spacer()
                        NavigationLink(destination: LoginView()) {
                            Text("Login")
                                .font(.largeTitle)
                                .frame(width: 150, height: 50)
                                .foregroundColor(Color.white)
                                .background(Color("Rojo1"))
                                .cornerRadius(15)
                                .padding()
                                
                        }
                        
                        NavigationLink(destination: RegisterView()) {
                            Text("Register")
                                .font(.largeTitle)
                                .foregroundColor(Color.white)
                                .frame(width: 150, height: 50)
                                .background(Color("Rojo1"))
                                .cornerRadius(15)
                                .padding()
                        }
                        Spacer()
                    }
                    
                    
                        

                }
            }
            .foregroundColor(.white)
        }
        
    }


}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
