//
//  HorizontalStackView.swift
//  SwiftUIProject
//
//  Created by Gaurav Bisht on 11/11/21.
//

import SwiftUI

struct HorizontalStackView : View {
    var body: some View {
        HStack {
            Text("First Horizontal Stack Text")
                .padding(.all, 10.0)
                .lineLimit(nil)
            Text("Second Horizontal Stack Text")
                .padding(.all, 10.0)
                .lineLimit(nil)
        }
        .background(Color.gray)
        .padding(.all, 10.0)
    }
}

#if DEBUG
struct HorizontalStackView_Previews : PreviewProvider {
    static var previews: some View {
        HorizontalStackView()
    }
}
#endif

