//
//  ContentView.swift
//  FormTapGestureWatchOSBug WatchKit Extension
//
//  Created by Jason Ji on 8/1/19.
//  Copyright © 2019 Jason Ji. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var selection: Int = 0
    
    var body: some View {
        // Neither the Form nor the List below work properly. Taps are inconsistent,
        // sometimes firing, sometimes not. (More often not.)
        Form {
            Section(header: Text("Section 1")) {
                ForEach(0..<3) { value in
                    Text("Hello \(value)")
                        .onTapGesture(count: 1) {
                            print("Tapped \(value)")
                        }
                }
            }
        }
        
//        Section(header: Text("Section 1")) {
//            List(0..<3) { value in
//                Text("List \(value)")
//                    .onTapGesture(count: 1) {
//                        print("Tapped \(value)")
//                    }
//            }
//        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
