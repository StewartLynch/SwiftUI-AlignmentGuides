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

struct BasicsView: View {
    var body: some View {
        VStack( alignment: .center) {
            HStack(alignment: .lastTextBaseline) {
                Text("Hello World")
                Text("Sleep Tight")
                    .font(.title2)
            }
            .border(.green)
            .font(.largeTitle)
            Divider()
            Text("Another View")
        }
        .border(.red)
    }
}

struct BasicsView_Previews: PreviewProvider {
    static var previews: some View {
        BasicsView()
    }
}
