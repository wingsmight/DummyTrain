//
//  ContentView.swift
//  DummyTrain
//
//  Created by Igoryok on 13.10.2022.
//

import SwiftUI

struct ContentView: View {
    @State var isActive = false
    
    var body: some View {
        TicketView()
//        NavigationView {
//            NavigationLink(destination: TicketView()) {
//                Image(systemName: "folder.fill")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 100, height: 100)
//            }
//            .navigationTitle("Главная")
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
