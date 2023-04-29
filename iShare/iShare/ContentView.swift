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
        NavigationView()
        {
            ZStack
            {
                Color(.blue)
                    .ignoresSafeArea()
                VStack
                {
                    Circle()
                        .frame(width: 150, height: 150)
                    Text("App iShare")
                        .font(.largeTitle)
                    HStack
                    {
                        Spacer()
                        NavigationLink(destination: LoginView()) {
                            Text("Login")
                                .foregroundColor(Color.white)
                                .frame(width: 70, height: 30)
                                .cornerRadius(15)
                                .background(Color.blue)
                        }
                        
                        NavigationLink(destination: RegisterView()) {
                            Text("Register")
                                .foregroundColor(Color.white)
                                .frame(width: 70, height: 30)
                                .cornerRadius(15)
                                .background(Color.blue)
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
