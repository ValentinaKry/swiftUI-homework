

import SwiftUI

struct RedGreenBlue: View {
    var body: some View {
        return GeometryReader { proxy in
            if proxy.size.width < proxy.size.height  {
                Group {
                    VStack (alignment: .trailing,spacing: 130){
                        HStack {
                            Spacer()
                            Rectangle()
                                .frame(width: 170, height: 170)
                                .foregroundColor(.red)

                        }
                        .padding(.top, 18)

                        HStack {
                            Spacer()
                            Rectangle()
                                .frame(width: 400, height: 170)
                                .foregroundColor(.green)

                        }

                        HStack {
                            Spacer()
                            Rectangle()
                                .frame(width: 170, height: 170)
                                .foregroundColor(.blue)

                        }
                    }

                }
            } else {
                Group {
                    HStack(alignment: .top, spacing: 130) {
                        VStack {
                            Rectangle()
                                .frame(width: 170, height: 170)
                                .foregroundColor(.red)
                        }
                        .padding(.leading, 22)
                        VStack {
                            Rectangle()
                                .frame(width: 170, height: 400)
                                .foregroundColor(.green)

                        }
                        VStack {
                            Rectangle()
                                .frame(width: 170, height: 170)
                                .foregroundColor(.blue)

                        }
                    }

                }
            }
        }
    }
}

struct RedGreenBlue_Previews: PreviewProvider {
    static var previews: some View {
        RedGreenBlue()
            .previewInterfaceOrientation(.portrait)
    }
}
