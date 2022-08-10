
import SwiftUI

struct ThreeSquare: View {
    var body: some View {

            VStack {
                Spacer()
                HStack {
                    Spacer()
                    RedRectangle()

                }

                HStack {
                    RedRectangle()

                }

                HStack {
                    RedRectangle()
                    Spacer()

                }

            }
            .frame(width: 400, height: 400)
            .border(Color.black, width: 3)
    }
}

struct ThreeSquare_Previews: PreviewProvider {
    static var previews: some View {
        ThreeSquare()
    }
}

struct RedRectangle: View {
    var body: some View {
        Rectangle()
            .frame(width: 40, height: 40)
            .foregroundColor(.red)
    }
}
