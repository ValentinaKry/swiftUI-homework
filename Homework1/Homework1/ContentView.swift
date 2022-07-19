

import SwiftUI

struct ContentView: View {
    @State private var selectedIndex: Int = 0
    private let locations = ["All", "Beach", "Sea"]
    private let nameLocation = ["Monterey", "Big Sur"]
    var body: some View {
        VStack {

            AppBarView()
            TagLineView()

            SearchView()

            Spacer()
            ScrollView (.horizontal, showsIndicators: false){
                HStack {
                    ForEach(0..<locations.count, id: \.self) { i in
                        CategoryView(isActive: i == selectedIndex, text: locations[i])
                            .onTapGesture {
                                selectedIndex = i
                            }
                    }
                }
            }
            .padding(.horizontal)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach (0..<2) { index in
                        PhotoGallery(image: Image(nameLocation[index]), label: nameLocation[index])
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
            Button (action: {}){
                Image(systemName: "location.fill")
                    .foregroundColor(Color("secondary"))
                    .font(.title2)
            }

            Text("Los Angeles, CA")
                .foregroundColor(Color("secondary"))
                .font(.title3)
            Spacer()

            Button(action: {}) {
                Image("Avatar")
                    .resizable()
                    .frame(width: 55, height: 45)
                    .clipShape(Circle())
                    .frame(width: 70, height: 70)
            }
        }
        .padding(.horizontal)
    }
}

struct TagLineView: View {
    var body: some View {
        HStack() {
            Text("Discover New Destination")
                .padding(.leading)
                .font(.system(size: 35, weight: .bold))
            Spacer()
        }
    }
}

struct SearchView: View {
    @State private var search: String = ""
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color.gray)
                    .padding(.trailing, 8)
                TextField("Search Places", text: $search)
            }
            .padding()
            .background(Color("lightGray"))
            .clipShape(Capsule())

            Button (action: {}) {
                Image(systemName: "slider.horizontal.3")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color("secondary"))
                    .clipShape(Circle())
                    .padding(.trailing)
            }
        }
        .padding(.top, 25)
        .padding(.leading)
    }
}

struct CategoryView: View {
    let isActive : Bool
    let text: String
    var body: some View {
        VStack(alignment: .leading) {
            Text(text)
                .font(.system(size: 16, weight: .bold))
                .foregroundColor(isActive ? Color("secondary") : Color.gray)


        }
        .padding(.trailing)
    }
}
