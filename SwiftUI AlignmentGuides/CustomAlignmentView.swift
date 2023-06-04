//
// Created for SwiftUI AlignmentGuides
// by  Stewart Lynch on 2023-06-03
// Using Swift 5.0
// Running on macOS 13.4
// 
// Folllow me on Mastodon: @StewartLynch@iosdev.space
// Or, Twitter, if it still exits: https://twitter.com/StewartLynch
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch


import SwiftUI

extension HorizontalAlignment {
    enum TwoColumnAlignment: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[HorizontalAlignment.center]
        }
    }
    
    static var twoColumnAlignment: HorizontalAlignment {
        HorizontalAlignment(TwoColumnAlignment.self)
    }
}

struct CustomAlignmentView: View {
    var body: some View {
        VStack(alignment: .twoColumnAlignment) {
                HStack {
                    Text("Country Name").bold()
                        .alignmentGuide(.twoColumnAlignment) { d in
                            d[.trailing]
                        }
                    Text("Capital").bold()
                }
                HStack {
                    Text("Canada").bold()
                        .alignmentGuide(.twoColumnAlignment) { d in
                            d[.trailing]
                        }
                    Text("Ottawa")
                }
                HStack {
                    Text("United States").bold()
                        .alignmentGuide(.twoColumnAlignment) { d in
                            d[.trailing]
                        }
                    Text("Washington DC")
                }
            }
    }
}

struct CustomAlignmentView_Previews: PreviewProvider {
    static var previews: some View {
        CustomAlignmentView()
    }
}
