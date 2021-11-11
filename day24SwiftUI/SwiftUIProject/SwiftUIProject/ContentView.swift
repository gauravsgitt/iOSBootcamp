//
//  ContentView.swift
//  SwiftUIProject
//
//  Created by Gaurav Bisht on 11/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        return NavigationView {
            List {
                NavigationLink(destination: ImageView()) {
                    Text("Image")
                }
                NavigationLink(destination: TextView()) {
                    Text("Text")
                }
                NavigationLink(destination: VerticalStackView()) {
                    Text("VerticalStackView")
                }
                NavigationLink(destination: HorizontalStackView()) {
                    Text("HorizontalStackView")
                }
                NavigationLink(destination: ButtonView()) {
                    Text("ButtonView")
                }
                NavigationLink(destination: PickerView()) {
                    Text("PickerView")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            // iPhone 8, iPhone 8 Plus,iPhone 11 Pro, iPhone 11 Pro Max and iPhone 11
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
                .previewDisplayName("iPhone 8")
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 8 Plus"))
                .previewDisplayName("iPhone 8 Plus")
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
                .previewDisplayName("iPhone 11")
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro"))
                .previewDisplayName("iPhone 11 Pro")
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro Max"))
                .previewDisplayName("iPhone 11 Pro Max")
        }
    }
}
