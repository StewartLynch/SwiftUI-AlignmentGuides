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

struct AlignmentSubscriptsView: View {
    var body: some View {
        VStack {
            HStack(alignment: .bottom) {
                Image(systemName: "1.circle.fill")
                Image(systemName: "2.circle.fill")
                    .alignmentGuide(.bottom) { d in
                        d[VerticalAlignment.center]
                    }
                Image(systemName: "3.circle.fill")
                    .alignmentGuide(.bottom) { d in
                        d[.top]
                    }
            }
            .font(.largeTitle)
            .border(.red)
            Divider()
            
            HStack(alignment: .bottom, spacing: 0) {
                Text("H")
                Text("2").font(.title2)
                    .alignmentGuide(.bottom) { d in
                        d[.bottom] - 5
                    }
                Text("O")
            }
            .font(.largeTitle)
            Divider()
            
            HStack {
                Image(systemName: "lightbulb.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30)
                    .alignmentGuide(VerticalAlignment.center) { d in
                        d[.bottom]
                    }
                Text("Energy")
                    .font(.largeTitle)
                    .alignmentGuide(VerticalAlignment.center) { d in
                        d[.firstTextBaseline]
                    }
            }
        }
    }
}

struct AlignmentSubscriptsView_Previews: PreviewProvider {
    static var previews: some View {
        AlignmentSubscriptsView()
    }
}
