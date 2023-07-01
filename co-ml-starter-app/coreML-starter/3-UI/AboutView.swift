//
//  AboutView.swift
//  coreML-starter
//
//

import SwiftUI

struct AboutView: View {
    
    var body: some View {
        ZStack {
            Color(hex: 0xfff8ee, opacity: 1.0)
            
            HStack {
                VStack {
                    Image("kandycepics")
                        .resizable()
                        .frame(width: 275, height: 360)
                    Text("Hi! I'm Kandyce Diep and I'm a rising junior at Inglemoor High School in Kenmore, WA. A fun fact about me is that I play golf and love to travel⛳️✈️")
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                        .foregroundColor(Color(hex: 0x5A9367, opacity: 1.0))
                }
                
                VStack {
                    Image("vaishnavipics")
                        .resizable()
                        .frame(width: 275, height: 360)
                    Text("Hello, I'm Vaishnavi! I'm a rising junior at Eastlake High School in Sammamish, WA. A fun fact about me is that I love jackfruit! 😊")
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                        .foregroundColor(Color(hex: 0x5A9367, opacity: 1.0))
                }
                
                VStack {
                    Image("sakurapics")
                        .resizable()
                        .frame(width: 275, height: 360)
                    Text("Hi! I'm Sakura Grady and I am a rising senior at Bellevue High School in Bellevue, WA. A fun fact about me is that I love anything Matcha😜")
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                        .foregroundColor(Color(hex: 0x5A9367, opacity: 1.0))
                }
            }
            .padding()
        }
    }
}
