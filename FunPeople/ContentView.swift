//
//  ContentView.swift
//  FunPeople
//
//  Created by Sorin Dolha on 30.11.2020.
//

import SwiftUI

struct ContentView: View {
    let actions = ["falls", "eats", "drinks", "climbes", "dreams"]
    let complements = ["into the bushes", "shoes", "from a bag", "whenever possible"]
    @State var name = ""
    @State var statement = "Hello, World!"
    var body: some View {
        VStack {
            TextField("Enter a friend's name", text: $name)
                .frame(width: 200)
                .multilineTextAlignment(.center)
            Button(action: prepareStatement) {
                Text("Tell me something about him/her")
            }
            Text(statement)
        }
    }
    func prepareStatement() {
        let action = actions[Int.random(in: 0..<actions.count)]
        let complement = complements[Int.random(in: 0..<complements.count)]
        statement = "\(name) \(action) \(complement)."
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
