//
//  VerticalStackView.swift
//  SwiftUIProject
//
//  Created by Gaurav Bisht on 11/11/21.
//

import SwiftUI

struct VerticalStackView : View {
    var body: some View {
        VStack {
            Text("First Vertical Stack Text")
                .padding(.all, 10.0)
                .lineLimit(nil)
            Text("Second Vertical Stack Text")
                .padding(.all, 10.0)
                .lineLimit(nil)
        }
        .background(Color.gray)
        .padding(.all, 10.0)
    }
}

#if DEBUG
struct VerticalStackView_Previews : PreviewProvider {
    static var previews: some View {
        VerticalStackView()
    }
}
#endif

