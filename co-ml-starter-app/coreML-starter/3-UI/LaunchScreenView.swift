//
//  LaunchScreenView.swift
//  coreML-starter
//
//  
//

import SwiftUI

struct LaunchScreenView: View {
    var body: some View {
        VStack {
            VStack {
                // header image:
                // TODO: replace with your own image.  Drag an image from your computer to assets.xcassets and add the name of your image below
                Image("water-footprint")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 400)
                // image from: https://www.pngitem.com/middle/ioRbwwh_what-is-water-footprint-safe-water-save-life/
                
                // title
                // TODO: Replace app title
                Text("TWIG")
                    .font(.system(size: 75))
                
                    .fontWeight(.heavy)
                    .padding()
                    .foregroundColor(Color(hex: 0x3f4b3b, opacity: 1.0))
                    
                
                Divider().frame(maxWidth: 300)
                
                // info
                // TODO: Replace with description of your app
                VStack(spacing: 20) {
                    Text("Want to know what's in your garden? Use our plant identifier!")
                        .font(.system(size: 30))
                        .fontWeight(.medium)
                        .foregroundColor(Color(hex: 0x5A9367, opacity: 1.0))
                    
                    Text("This app uses the camera and AI/ML to identify the plant and suggest caretaking methods.")
                        .font(.system(size: 30))
                        .fontWeight(.medium)
                        .foregroundColor(Color(hex: 0x5A9367, opacity: 1.0))

                }
                .padding()
                .multilineTextAlignment(.center)
                
                // item list
                // TODO: replace with the names of your items
                HStack(spacing: 10) {
                    VStack {
                        Image("Petuniapics")
                            .resizable()
                            .frame(width: 50,height: 50)
                        
                        
                        Text("Petunia")
                        .foregroundColor(Color(hex: 0x5A9367, opacity: 1.0))
                        .fontWeight(.medium)
                    }
                    .padding()
                    
                    VStack {
                        Image("Dahliapics")
                            .resizable()
                            .frame(width: 50, height: 50)
                        Text("Dahlia")
                        .foregroundColor(Color(hex: 0x5A9367, opacity: 1.0))
                        .fontWeight(.medium)
                    }
                    .padding()
                    
                    VStack {
                        Image("Hydrangeapics")
                            .resizable()
                            .frame(width: 50, height: 50)
                        Text("Hydrangea")
                        .foregroundColor(Color(hex: 0x5A9367, opacity: 1.0))
                        .fontWeight(.medium)
                    }
                    .padding()
                    
                    VStack {
                        Image("kalanchoepics")
                            .resizable()
                            .frame(width: 50, height: 50)
                        Text("Kalanchoe")
                        .foregroundColor(Color(hex: 0x5A9367, opacity: 1.0))
                        .fontWeight(.medium)
                    }
                    .padding()
                    
                }
                .background(Color(hex: 0xCAE8CA, opacity: 1.0))
                .cornerRadius(10)
                .padding()
                
                // start button
                NavigationLink(destination: ClassificationView()){
                    Text("Explore")
                    .foregroundColor(Color(hex: 0x3F4B3B, opacity: 1.0))
                }
                .buttonStyle(RoundedRectButtonStyle(buttonColor: (Color(hex: 0xF8C7CC, opacity: 1.0))))
                .padding()
                
                // about page
                NavigationLink(destination: AboutView()){
                    Text("Credits")
                    .foregroundColor(Color(hex: 0x3F4B3B, opacity: 1.0))
                }
                .buttonStyle(RoundedRectButtonStyle(buttonColor: (Color(hex: 0xF8C7CC, opacity: 1.0))))
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(hex: 0xfff8ee, opacity: 1.0))
            .cornerRadius(25)
            .shadow(radius: 5)
            
        }// VStack
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(hex: 0xD5F4FF, opacity: 1.0))
        .edgesIgnoringSafeArea(.all)
        .navigationBarHidden(true)
    }
}

struct LaunchScreenView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            if #available(iOS 15.0, *) {
                LaunchScreenView()
                    .previewDevice(PreviewDevice(rawValue: "iPad Pro (12.9-inch)"))
                    .previewInterfaceOrientation(.landscapeLeft)
            } else {
                // Fallback on earlier versions
            }
        }
    }
}
