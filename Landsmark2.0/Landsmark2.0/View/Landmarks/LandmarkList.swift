    //
    //  LandmarkList.swift
    //  Landsmark2.0
    //
    //  Created by Valentina Krysak on 13.07.22.
    //

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData


    @State private var showFavoritesOnly = false
    
    var filtredLandmakrs: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach (filtredLandmakrs) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarksRow(landmark: landmark)
                }
            }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: ModelData().landmarks[0])
    }
    
}

