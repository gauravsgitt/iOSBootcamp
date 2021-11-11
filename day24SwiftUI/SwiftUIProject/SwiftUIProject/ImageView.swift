//
//  ImageView.swift
//  SwiftUIProject
//
//  Created by Gaurav Bisht on 11/11/21.
//

import SwiftUI

struct ImageView : View {
    var body: some View {
        Image("Taj-Mahal-Agra-India")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 50.0, height: 300.0)
    }
}

#if DEBUG
struct ImageView_Previews : PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
#endif
