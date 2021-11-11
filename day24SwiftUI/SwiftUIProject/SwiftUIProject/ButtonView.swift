//
//  ButtonView.swift
//  SwiftUIProject
//
//  Created by Gaurav Bisht on 11/11/21.
//

import SwiftUI

struct ButtonView : View {
    var body: some View {
        
        Button(action: {
            
        }, label: {
            Text("My Button")
                .foregroundColor(.white)
                .bold()
        })
        .padding(.all, 20.0)
        .frame(width: 300.0)
        .background(Color.red)
        .cornerRadius(5)
    }
    
}

#if DEBUG
struct ButtonView_Previews : PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
#endif
