//
//  PickerView.swift
//  SwiftUIProject
//
//  Created by Gaurav Bisht on 11/11/21.
//

import SwiftUI

struct PickerView : View {
    
    @State private var index = 0
    
    var names = ["Gaurav", "Satyam", "Saif", "Talha", "Rohan"]
    
    var body: some View {
        NavigationView {
            Picker(selection: $index, label: Text("Names")) {
                ForEach(0 ..< names.count) {
                    Text(self.names[$0]).tag($0)
                }
            }
            .navigationBarTitle("Names")
        }
    }
}

#if DEBUG
struct PickerView_Previews : PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
#endif
