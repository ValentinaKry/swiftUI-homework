

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.cards, id: \.self) { card in
                    HStack {

                        Text(card.name)
                            .bold()
                        Text(card.username)
                            .font(.body)
                    }
                    .padding(3)
                }
            }
            .navigationTitle("Card")
            .onAppear{
                viewModel.fetch()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
