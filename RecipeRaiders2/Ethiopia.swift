//
//  Ethiopia.swift
//  RecipeRaiders2
//
//  Created by Sampada Baral on 6/29/23.
//

import SwiftUI

struct Ethiopia: View {
    let green = Color(red: 0.659, green: 0.773, blue: 0.408)
    let beige = Color(red: 0.941, green: 0.827, blue: 0.725)
    let forestGreen = Color(red: 0, green: 0.2, blue: 0.125)
    let blue = Color(red: 0.757, green: 0.816, blue:0.906)
    let doroWatIngredients = ["7 lbs skinned and cleaned chicken thighs and drumsticks", "3 pre-boiled eggs", "8 finely chopped onions", "2 cups vegetable oil", "2 cups water", "5 tsp garlic powder", "2 tsp ginger powder", "½ cup berbere(spice mix)", "2 tsp korerima (black cardamom)", "¼ cup paprika", "2 tsp wot kimem (mekelesha/spice blend)", "2 tsp salt"]
    let locroDirections = ["1. Begin by adding the garlic powder, ginger powder, onions, and vegetable oil to a large-sized pot and let the mix simmer at low heat.", "2. Add paprika and berbere and continue to simmer at the same low heat for up to 20 minutes while stirring occasionally. Add some water to avoid the mix from sticking.", "3. Add the chicken thighs and drumsticks and simmer some more while also slowly adding the remainder of the water.", "4. Add the pre-boiled eggs, and finish simmering by adding salt, korerima (black cardamom), and wot kimem (mekelesha/spice blend).", "5. You can serve your Doro Wat hot with injera (a spongy Ethiopian flatbread made from teff flour)."]
    let locroSources = ["                                                                                  Recipe: https://theethiopianfood.com/doro-wot-recipe/                                     ", "                                                                                  Image: https://www.cookingchanneltv.com/recipes/ethiopian-chicken-stew-doro-wat-2120667"]
    var body: some View {
      ZStack {
        green.ignoresSafeArea()
        ScrollView {
          VStack (spacing: 20) {
            Image("DoroWat")
              .resizable()
              .aspectRatio(contentMode: ContentMode.fit)
              .cornerRadius(30)
              .background(Rectangle()
                .foregroundColor(beige))
              .cornerRadius(40)
              .padding()
            HStack (spacing: 100) {
              Text("🍗  Doro Wat  🍗")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(forestGreen)
                .multilineTextAlignment(.center)
            }
            Text("           Did you know?         ")
              .font(.headline)
              .foregroundColor(forestGreen)
              .fontWeight(.regular)
              .padding()
              .background(Rectangle()
                .foregroundColor(blue))
              .cornerRadius(30)
            Text("In the 60s, if an Ethiopian woman couldn’t cook doro wot, she wasn’t ready to get married. She had to know how to cut the chicken into exactly 12 parts.")
              .font(.body)
              .foregroundColor(forestGreen)
              .fontWeight(.regular)
              .padding(20)
              .background(Rectangle()
                .foregroundColor(beige))
              .cornerRadius(40)
              .padding()
            Text("          Ingredients           ")
              .font(.body)
              .foregroundColor(forestGreen)
              .fontWeight(.regular)
              .padding()
              .background(Rectangle()
                .foregroundColor(blue))
              .cornerRadius(30)
              .padding()
              VStack(spacing: 20) {
              ForEach(doroWatIngredients, id: \.self) { ingredient in
                Text(ingredient)
                  .font(.body)
                  .multilineTextAlignment(.center)
                  .foregroundColor(forestGreen)
                  .fontWeight(.regular)
              }
            }
            .padding()
            .background(Rectangle()
              .foregroundColor(beige))
            .cornerRadius(40)
          }
          .navigationTitle("🍗")
          .navigationBarTitleDisplayMode(.inline)
          Text("           Directions            ")
            .font(.body)
            .foregroundColor(forestGreen)
            .fontWeight(.regular)
            .padding()
            .background(Rectangle()
              .foregroundColor(blue))
            .cornerRadius(30)
            .padding()
          VStack(spacing: 20) {
            ForEach(locroDirections, id: \.self) { direction in
              Text(direction)
                .font(.body)
                .fontWeight(.regular)
                .foregroundColor(forestGreen)
            }
          }
          .padding()
          .background(Rectangle()
            .foregroundColor(beige))
          .cornerRadius(40)
          .padding()
          Text("           Sources            ")
            .font(.body)
            .foregroundColor(forestGreen)
            .fontWeight(.regular)
            .padding()
            .background(Rectangle()
              .foregroundColor(blue))
            .cornerRadius(30)
            .padding()
          VStack(spacing: 20) {
            ForEach(locroSources, id: \.self) { direction in
              Text(direction)
                .font(.body)
                .fontWeight(.regular)
                .foregroundColor(forestGreen)
            }
          }
          .padding()
          .background(Rectangle()
            .foregroundColor(beige))
          .cornerRadius(40)
          .padding()
        }
      }
    }
  }
struct Ethiopia_Previews: PreviewProvider {
    static var previews: some View {
        Ethiopia()
    }
}
