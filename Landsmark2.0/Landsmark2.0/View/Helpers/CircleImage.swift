    //
    //  CircleImage.swift
    //  Landsmark2.0
    //
    //  Created by Valentina Krysak on 12.07.22.
    //

import SwiftUI

struct CircleImage: View {
    var image : Image
    var body: some View {
        image
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 2)
            }
            .shadow(radius: 7)

    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
