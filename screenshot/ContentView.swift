//
//  ContentView.swift
//  screenshot
//
//  Created by Milind Mishra on 20/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world! This is Milind.")
            
            Button("Make a screenshot") {
                let task = Process()
                task.executableURL = URL(fileURLWithPath: "/usr/sbin/screencapture")
                task.arguments = ["-cw"]
                
                do {
                    try task.run()
                    task.waitUntilExit()
                } catch {
                    print("could not take screenshot : \(error)")
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
