//
//  MainView.swift
//  YOLO
//
//  Created by Jonathan Nguyen on 10/14/21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack(alignment: .leading){
            LinearGradient(gradient:Gradient(colors:[.blue,Color("gradientBlue")]),
                           startPoint: .top,
                           endPoint: .bottom)
                .ignoresSafeArea()
            ScrollView(){
                    TitleView(title: "Social")
                    OptionsView()
                    
                    TitleView(title: "Spontaneous")
                    OptionsView()
                    
                    TitleView(title: "Daredevil")
                    OptionsView()
            }.frame(maxHeight: .infinity)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

struct TitleView: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .font(.system(size: 30, weight: .bold))
            .foregroundColor(.black)
            .padding(.leading)
            .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .leading)
    }
}

struct CardView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20 )
            .foregroundColor(.gray)
            .frame(width: 200, height: 300, alignment: .center)
            .shadow(color: .black, radius: 5, x: 5, y: 5)
            .padding()
    }
}

struct OptionsView: View {
    var body: some View {
        HStack{
            CardView()
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
    }
}
