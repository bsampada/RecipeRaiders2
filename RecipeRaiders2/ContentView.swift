//
//  ContentView.swift
//  RecipeRaiders2
//
//  Created by Sampada Baral on 6/29/23.
//

import SwiftUI

struct ContentView: View {
    let green = Color(red: 0.659, green: 0.773, blue: 0.408)
    let beige = Color(red: 0.941, green: 0.827, blue: 0.725)
    let forestGreen = Color(red: 0, green: 0.2, blue: 0.125)
    let blue = Color(red: 0.757, green: 0.816, blue:0.906)
    @State private var query = ""
    var body: some View {
        NavigationStack {
            ZStack {
                green.ignoresSafeArea()
                ScrollView {
                    VStack (spacing: 20) {
                        HStack {
                            Text("🔍")
                            TextField("Search for a country...", text: $query)
                        }
                        .padding(10)
                        .background(Rectangle()
                            .foregroundColor(blue))
                        .cornerRadius(25)
                        .padding()
                        let countries = ["🇳🇵   Nepal   🇳🇵", "🇪🇨   Ecuador   🇪🇨", "🇮🇹   Italy    🇮🇹", "🇪🇹   Ethiopia   🇪🇹"]
                        // ATTN: please don't remove this chunk of commented text, I'm trying to make it dynamically create buttons!
//                        let files = [SecondView(), Ecuador()]
//                        ForEach(0..<countries.count, id: \.self) { i in
//                            NavigationLink(destination: files[i]) {
//                                Text(countries[i])
//                                    .font(.largeTitle)
//                                    .foregroundColor(forestGreen)
//                                    .padding(20)
//                                    .background(Rectangle()
//                                        .foregroundColor(beige))
//                                    .cornerRadius(10)
//                                    .padding()
//                            }
//                        }
                        ForEach(countries, id: \.self) { country in
                            NavigationLink(destination: SecondView()) {
                                Text(country)
                                    .font(.largeTitle)
                                    .foregroundColor(forestGreen)
                                    .padding(20)
                                    .background(Rectangle()
                                        .foregroundColor(beige))
                                    .cornerRadius(10)
                                    .padding()
                            }
                        }
                    }
                }
                .toolbar {
                    ToolbarItemGroup(placement: .status) {
                        HStack {
                            NavigationLink(destination: ContentView()) {
                                Text("🏠")
                            }
                            NavigationLink(destination: ContentView()) {
                                Text("⭐️")
                            }
                            NavigationLink(destination: ContentView()) {
                                Text("👤")
                            }
                        }
                        .padding(10)
                        .background(Rectangle()
                            .foregroundColor(forestGreen))
                        .cornerRadius(25)
                        .padding()
                    }
                }
            }
        }
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
