    //
    //  ContentView.swift
    //  Homework1.1
    //
    //  Created by Valentina Krysak on 21.07.22.
    //

import SwiftUI

struct ContentView: View {
    @State private var selectedIndex: Int = 0
    private let locations = ["All", "Beach", "Sea"]
    private let nameLocation = ["Monterey", "Big Sur"]

    var body: some View {
        VStack (alignment: .leading){
            AppBarView()
            TagLineView()
                .padding(.leading)

            SearchAndFilterView()

            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0 ..< locations.count, id: \.self) { i in
                        CategoryView(isActive: i == selectedIndex, text: locations[i])
                            .onTapGesture {
                                selectedIndex = i
                            }
                    }
                }
                .padding()
            }

            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach (0..<nameLocation.count, id: \.self) { index in
                        PhotoGallery(
                            image: Image(nameLocation[index]),
                            label: nameLocation[index])
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct AppBarView: View {
    var body: some View {
        HStack {
            HStack {
                Button(action: {}) {
                    Image(systemName: "location.fill")
                        .font(.system( size: 17, weight: .semibold))
                }
                Text("Los Angeles, CA")
            }
            .foregroundColor(Color("secondary"))
            Spacer()

            Button( action: {}) {
                Image("avatar")
                    .resizable()
                    .frame(width: 54, height: 42)
                    .clipShape(Circle())
                    .shadow(color: .gray, radius: 0.5, x: 0, y: 0)
            }

        }
        .padding(.horizontal)
    }
}

struct TagLineView: View {
    var body: some View {
        Text ("Discover New \nDestination")
            .font(.system(size: 33, weight: .bold))
    }
}

struct SearchAndFilterView: View {
    @State private var search: String = ""
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color.gray)
                    .padding(.trailing, 5)
                TextField("Search Places", text: $search)
            }
            .padding()
            .background(Color("grayLight"))
            .clipShape(Capsule())

            Button(action: {}) {
                Image(systemName: "slider.horizontal.3")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color("secondary"))
                    .clipShape(Circle())
                    .padding(.trailing)

            }
        }
        .padding(.leading)
    }
}

struct CategoryView: View {
    let isActive: Bool
    let text: String
    var body: some View {
        VStack() {
            Text(text)
                .fontWeight(.medium)
                .font(.system(size: 18))
                .foregroundColor(isActive ? Color("secondary")
                                 : Color.gray)

        }
        .padding(.trailing)
    }
}
