    //
    //  LandmarksRow.swift
    //  Landsmark2.0
    //
    //  Created by Valentina Krysak on 12.07.22.
    //

import SwiftUI

struct LandmarksRow: View {

    var landmark: Landmark

    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()

            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarksRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks

    static var previews: some View {
        Group {
            LandmarksRow(landmark: landmarks[1])
            LandmarksRow(landmark: landmarks[0])
        }
        .previewLayout(.fixed(width: 300, height: 70))

    }
}
