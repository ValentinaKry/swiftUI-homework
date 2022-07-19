    //
    //  PhotoGallery.swift
    //  Homework1
    //
    //  Created by Valentina Krysak on 19.07.22.
    //

import SwiftUI

struct PhotoGallery: View {
    let image: Image
    @State private var nameOfPlase = ["Monterey", "Big Sur"]
    let label: String
    var body: some View {
        ZStack {
           image
                .resizable()
                .frame(width: 270, height: 450)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .overlay(alignment: .bottom) {
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Text(label)
                                .foregroundColor(.white)
                                .shadow(color: .black, radius: 3, x: 0, y: 0)
                                .font(.system(size: 26, weight: .semibold))
                            Text(label)
                                .foregroundColor(.white)
                                .shadow(color: .black, radius: 3, x: 0, y: 0)
                                .font(.system(size: 21, weight: .regular))
                            
                        }
                        .padding()
                        Spacer()
                    }
                }
        }
        .padding()
    }
}

struct PhotoGallery_Previews: PreviewProvider {
    static var previews: some View {
        PhotoGallery(image: Image("Monterey"), label: "Monterey")
    }
}
