//
//  PredictionResultView.swift
//  coreML-starter
//

import SwiftUI

struct PredictionResultView: View {
    private(set) var labelData: Classification
    var body: some View {
        // TODO: The View that shows classification results - edit the styling below!
        
        VStack(alignment: .center) {
            Text(labelData.label.capitalized)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color(hex: 0x3f4b3b, opacity: 1.0))
            
            Image(labelData.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200)
            HStack(alignment: .center, spacing: 1) {
                Text(labelData.text)
                    .fontWeight(.bold)
                    .font(.system(size: 20))
                    .foregroundColor(Color(hex: 0x5A9367, opacity: 1.0))
               // .aspectRatio(contentMode: .fit)
            }
        }// VStack
        .frame(maxWidth: 300)
        .padding()
        .background(Color(hex: 0xfff8ee, opacity: 1.0))
    }
        
}

struct PredictionResultView_Previews: PreviewProvider {
    static var previews: some View {
        PredictionResultView(labelData: Classification())
    }
}
