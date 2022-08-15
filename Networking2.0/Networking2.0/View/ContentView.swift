import SwiftUI

struct ContentView: View {
    @State var cards: [Card] = []
    var body: some View {
        List(cards) { card in
            HStack {
                Text(card.name)
                    .font(.title3.bold())
                Spacer()
                Text(card.username)
            }

        }
        .onAppear{
            Api().getPost{ cards in
                self.cards = cards
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
