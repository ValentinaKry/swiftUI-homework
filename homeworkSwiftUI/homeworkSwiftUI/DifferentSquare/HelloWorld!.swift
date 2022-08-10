
import SwiftUI

struct HelloWorld: View {
    var body: some View {
        
        
        ZStack(alignment: .bottomTrailing) {
            HStack {
                Rectangle ()
                    .border(Color.black, width: 2)
                    .frame(width: 300, height: 300)
                    .foregroundColor(.red)
            }
            
            HStack {
                Spacer()
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
        }
        .padding(.horizontal, 55)
        
    }
}

struct HelloWorld_Previews: PreviewProvider {
    static var previews: some View {
        HelloWorld()
    }
}
