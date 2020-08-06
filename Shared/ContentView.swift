//
//  ContentView.swift
//  Shared
//
//  Created by Master Family on 06/08/2020.
//

import SwiftUI

struct ContentView: View {
    @State private var intValue = 0
    var body: some View {
        StateExample()
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}



struct StateExample: View {
    @State private var intValue = 0
    
    var body: some View {
        VStack {
            Text("intValue equals \(intValue)")
            
            BindingView(intValue: $intValue)
            
        }
    }
}

// You should use @State if:
// The view itself creates(and owns) the instance you want to wrap.
// You need to respond to changes that occur within the wrapped property
// You're wrapping a value type (struct or enum)




struct BindingView: View {
    @Binding var intValue: Int
    
    var body: some View {
        VStack {
            Button("increment") {
                intValue += 1
            }
        }
            
    }
}

//You should use @Binding if :
//You need read adn write access to a aproperty that's owned by a parent view
//The wrapped property is a value type (struct or enum)
//You don't own the wrapped property(it's provided by a parent view)
