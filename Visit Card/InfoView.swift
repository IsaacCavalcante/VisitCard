//
//  InfoView.swift
//  Visit Card
//
//  Created by Isaac Cavalcante on 09/03/21.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    let color: Color
    let foregroundColor: Color
    
    var body: some View {
        ZStack {
            color.frame(height: 70, alignment: .center).clipShape(RoundedRectangle(cornerRadius: 35))
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 30, alignment: .center)
                    .foregroundColor(foregroundColor)
                Text(text)
                    .font(.system(size: 23))
                    .bold()
                    .foregroundColor(foregroundColor)
            }.padding(.all)
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "cavalcante.isaac1@gmail.com", imageName: "envelope.circle", color: Color(.white), foregroundColor: Color(red: 0.17, green: 0.24, blue: 0.31, opacity: 1.00))
            .previewLayout(.sizeThatFits)
    }
}
