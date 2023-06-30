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
    @State private var isLocked1 = false
    @State private var check1 = "✅"
    @State private var isLocked2 = false
    @State private var check2 = "✅"
    @State private var isLocked3 = false
    @State private var check3 = "✅"
    @State private var isLocked4 = false
    @State private var check4 = "✅"
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
                            Button(check1) {
                                if self.isLocked1 {
                                    self.count -= 5
                                    self.check1 = "✅"
                                } else {
                                    self.count += 5
                                    self.check1 = "    "
                                }
                                self.isLocked1.toggle()
                            }
                            .buttonStyle(.borderedProminent)
                            .tint(isLocked1 == true ? .gray : blue)
                            .frame(
                                width: 50
                            )
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
                            Button(check2) {
                                if self.isLocked2 {
                                    self.count -= 5
                                    self.check2 = "✅"
                                } else {
                                    self.count += 5
                                    self.check2 = "    "
                                }
                                self.isLocked2.toggle()
                            }
                            .buttonStyle(.borderedProminent)
                            .tint(isLocked2 == true ? .gray : blue)
                            .frame(
                                width: 50
                            )
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
                            Button(check3) {
                                if self.isLocked3 {
                                    self.count -= 5
                                    self.check3 = "✅"
                                } else {
                                    self.count += 5
                                    self.check3 = "    "
                                }
                                self.isLocked3.toggle()
                            }
                            .buttonStyle(.borderedProminent)
                            .tint(isLocked3 == true ? .gray : blue)
                            .frame(
                                width: 50
                            )
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
                            Button(check4) {
                                if self.isLocked4 {
                                    self.count -= 5
                                    self.check4 = "✅"
                                } else {
                                    self.count += 5
                                    self.check4 = "    "
                                }
                                self.isLocked4.toggle()
                            }
                            .buttonStyle(.borderedProminent)
                            .tint(isLocked4 == true ? .gray : blue)
                            .frame(
                                width: 50
                            )
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
