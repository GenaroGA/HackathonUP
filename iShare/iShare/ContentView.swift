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
                Color(.blue)
                    .ignoresSafeArea()
                VStack
                {
                    Circle()
                        .frame(width: 150, height: 150)
                    Text("iShare")
                        .font(.largeTitle)
                    HStack
                    {
                        Spacer()
                        NavigationLink(destination: LoginView()) {
                            Text("Login")
                                .cornerRadius(15)
                                .font(.title2)
                                .foregroundColor(Color.white)
                                .frame(width: 90, height: 40)
                                .background(Color.blue)
                                .padding()
                        }
                        
                        NavigationLink(destination: RegisterView()) {
                            Text("Register")
                                .cornerRadius(15)
                                .font(.title2)
                                .foregroundColor(Color.white)
                                .frame(width: 90, height: 40)
                                .background(Color.blue)
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
