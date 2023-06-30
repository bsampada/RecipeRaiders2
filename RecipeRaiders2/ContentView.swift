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
//    @State private var btn1visibility
    @State var count: Int = 0
    var body: some View {
        NavigationStack {
            ZStack {
                green.ignoresSafeArea()
                ScrollView {
                    VStack(alignment: .leading){
                        Text("Current score: \(count)")
                            .font(.title2)
                            .foregroundColor(forestGreen)
                            .multilineTextAlignment(.center)
                            .padding()
                            .background(Rectangle()
                                .foregroundColor(blue))
                            .cornerRadius(25)
                            .padding()
                    }
                    VStack (spacing: 20) {
                        HStack {
                            Text("🔍")
                            TextField("Search for a country...", text: $query)
                        }
                        .padding(10)
                        .background(Rectangle()
                            .foregroundColor(blue))
                        .cornerRadius(25)
                        .padding(.horizontal)
                        HStack() {
                            Button("✅") {
                                self.count += 5
                            }
                            .buttonStyle(.borderedProminent)
                            .tint(blue)
                            .foregroundColor(forestGreen)
                            NavigationLink(destination: SecondView()) {
                                Text("🇳🇵   Nepal   🇳🇵")
                                    .font(.largeTitle)
                                    .foregroundColor(forestGreen)
                                    .padding(20)
                                    .background(Rectangle()
                                        .foregroundColor(beige))
                                    .cornerRadius(10)
                            }
                        }
                        .frame(
                            minWidth: 0,
                            maxWidth: .infinity,
                            minHeight: 0,
                            maxHeight: .infinity,
                            alignment: .topLeading
                        )
                        .padding()
                        HStack() {
                            Button("✅") {
                                self.count += 5
                            }
                            .buttonStyle(.borderedProminent)
                            .tint(blue)
                            .foregroundColor(forestGreen)
                            NavigationLink(destination: Ecuador()) {
                                Text("🇪🇨   Ecuador   🇪🇨")
                                    .font(.largeTitle)
                                    .foregroundColor(forestGreen)
                                    .padding(20)
                                    .background(Rectangle()
                                        .foregroundColor(beige))
                                    .cornerRadius(10)
                            }
                        }
                        .frame(
                            minWidth: 0,
                            maxWidth: .infinity,
                            minHeight: 0,
                            maxHeight: .infinity,
                            alignment: .topLeading
                        )
                        .padding()
                        HStack() {
                            Button("✅") {
                                self.count += 5
                            }
                            .buttonStyle(.borderedProminent)
                            .tint(blue)
                            .foregroundColor(forestGreen)
                            NavigationLink(destination: Italy()) {
                                Text("🇮🇹   Italy   🇮🇹")
                                    .font(.largeTitle)
                                    .foregroundColor(forestGreen)
                                    .padding(20)
                                    .background(Rectangle()
                                        .foregroundColor(beige))
                                    .cornerRadius(10)
                            }
                        }
                        .frame(
                            minWidth: 0,
                            maxWidth: .infinity,
                            minHeight: 0,
                            maxHeight: .infinity,
                            alignment: .topLeading
                        )
                        .padding()
                        HStack() {
                            Button("✅") {
                                self.count += 5
                            }
                            .buttonStyle(.borderedProminent)
                            .tint(blue)
                            .foregroundColor(forestGreen)
                            NavigationLink(destination: Ethiopia()) {
                                Text("🇪🇹   Ethiopia   🇪🇹")
                                    .font(.largeTitle)
                                    .foregroundColor(forestGreen)
                                    .padding(20)
                                    .background(Rectangle()
                                        .foregroundColor(beige))
                                    .cornerRadius(10)
                            }
                        }
                        .frame(
                            minWidth: 0,
                            maxWidth: .infinity,
                            minHeight: 0,
                            maxHeight: .infinity,
                            alignment: .topLeading
                        )
                        .padding()
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
