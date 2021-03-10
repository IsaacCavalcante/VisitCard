//
//  ContentView.swift
//  Visit Card
//
//  Created by Isaac Cavalcante on 09/03/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.17, green: 0.24, blue: 0.31, opacity: 1.00)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("me face")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Isaac Cavalcante")
                    .font(Font.custom("Courgette-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .font(.system(size: 25))
                    .bold()
                    .foregroundColor(.white)
                Text("NodeJs Developer")
                    .font(.system(size: 25))
                    .bold()
                    .foregroundColor(.white)
                Divider().foregroundColor(.white)
                InfoView(text: "+55 85 99995 5681", imageName: "phone.circle", color: Color(.white), foregroundColor: Color(red: 0.17, green: 0.24, blue: 0.31, opacity: 1.00))
                InfoView(text: "cavalcante.isaac1@gmail.com", imageName: "envelope.circle", color: Color(.white), foregroundColor: Color(red: 0.17, green: 0.24, blue: 0.31, opacity: 1.00))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
