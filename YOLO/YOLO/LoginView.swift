//
//  ContentView.swift
//  YOLO
//
//  Created by Jonathan Nguyen on 10/14/21.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        NavigationView{
            ZStack{
                LinearGradient(gradient:Gradient(colors:[.blue,Color("gradientBlue")]),
                               startPoint: .top,
                               endPoint: .bottom)
                    .ignoresSafeArea()
                
                VStack(spacing: 15){
                    
                    Text("YOLO")
                        .font(.system(size: 70))
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                        .shadow(color: .black, radius: 2, x: 5, y: 5)

                    NavigationLink(destination: MainView(),label: {
                        Text("Connect to Snapchat")
                            .foregroundColor(Color.white)
                            .font(.system(size: 18))
                            .fontWeight(.medium)
                            .frame(width: 200, height: 40, alignment: .center)
                            .background(Color.black)
                            .cornerRadius(20)
                    })
                    
                }.offset(y: -60)
                
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
