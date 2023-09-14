//
//  ContentView.swift
//  blackcoffer
//
//  Created by Gaurav Verma on 30/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            
            exploreScreen()
                .tabItem {
                    Label("explore", systemImage: "eye")
                }
            
            network()
                .tabItem {
                    Label("Network", systemImage: "bonjour")
                }
            
            chat()
                .tabItem {
                    Label("Chat", systemImage: "text.bubble.fill")
                }
            
            contact()
                .tabItem {
                    Label("Contact", systemImage: "text.book.closed")
                }
            
            group()
                .tabItem {
                    Label("Groups", systemImage: "number")
                }
            
        }
        .accentColor(Color(hue: 0.646, saturation: 0.768, brightness: 0.339))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct network: View {
    var body: some View {
        Text("Neteork")
    }
}

struct chat: View {
    var body: some View {
        Text("chat")
    }
}

struct contact: View {
    var body: some View {
        Text("contact")
    }
}

struct group: View {
    var body: some View {
        Text("group")
    }
}

