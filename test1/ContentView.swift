//
//  ContentView.swift
//  test1
//
//  Created by HanGeunyoung on 2021/11/06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("This is test1App")
                .padding()
            Button(action: {}) {
                Text("YES").padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
