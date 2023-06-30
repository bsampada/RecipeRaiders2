//
//  SecondView.swift
//  RecipeRaiders2
//
//  Created by Sampada Baral on 6/29/23.
//
import SwiftUI
struct SecondView: View {
  let green = Color(red: 0.659, green: 0.773, blue: 0.408)
  let beige = Color(red: 0.941, green: 0.827, blue: 0.725)
  let forestGreen = Color(red: 0, green: 0.2, blue: 0.125)
  let blue = Color(red: 0.757, green: 0.816, blue:0.906)
  let momosIngredients = ["2 cup of minced meat", "1 grated onion", "Some finely chopped coriander", "2 tablespoons of ginger paste", "2 tablespoons of garlic paste", "Half a tablespoon of coriander powder", "Half a tablespoon of turmeric", "Half a tablespoon of cumin powder", "2 tablespoons of grated chilli", "2 tablespoons of vegetable oil", "2 tablespoons of salt", "4.25 cups of flour"]
  let momosDirections = ["1. To prepare the filling:                                           - Mix the onion, turmeric powder, salt, grated chilli, ginger and garlic paste, coriander powder together.                                                                  - Add 2 tablespoons of vegetable oil and mix it again.                                                                               - Add finely chopped coriander and mix.", "2. To make the wrappers:                                                                       - Put the flour into a bowl.                                                                              - Add water a little at a time to the flour to make dough.                                                                             - Knead the dough for a few more minutes.                                  - Pinch off a bit of the dough.                                  - With a rolling pin roll the dough as thin as possible into circular shapes.", "3. To pack the momos:                                                                             - Put around one tablespoon of the filling into the centre of the wrapping.                                           - Pinch one edge of the wrapping to the other edge then twist it.                                                                             - Keep doing this until the filling is covered.", "4. To cook the momos:                                                                             - Oil the bottom of the steamer (prevents the momos from sticking.)                                                                             - Put the momos in a systematic order so that they don’t touch each other.                                  - Steam for 20 – 30 mins."]
  let momosSources = ["                                                                                  Recipe: https://www.foodpleasureandhealth.com/blog/2020/8/6/5-momo-achar-recipes                                           ", "                                                                                  Image: https://unsplash.com/photos/LR559Dcst70                 "]
  var body: some View {
    ZStack {
      green.ignoresSafeArea()
      ScrollView {
        VStack (spacing: 20) {
          Image("MOMOS")
            .resizable()
            .aspectRatio(contentMode: ContentMode.fit)
            .cornerRadius(30)
            .background(Rectangle()
              .foregroundColor(beige))
            .cornerRadius(40)
            .padding()
          HStack (spacing: 100) {
            Text("🥟  MOMOS  🥟")
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
          Text("Momo was a Newari food that originated in the 14th century in the Kathmandu valley. It was later introduced to Tibet, China and as far away as Korea & Japan by a Nepali princess.")
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
          VStack() {
            ForEach(momosIngredients, id: \.self) { ingredient in
              Text(ingredient)
                .font(.body)
                .foregroundColor(forestGreen)
                .fontWeight(.regular)
            }
          }
          .padding()
          .background(Rectangle()
            .foregroundColor(beige))
          .cornerRadius(40)
        }
        .navigationTitle("🥟")
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
          ForEach(momosDirections, id: \.self) { direction in
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
          ForEach(momosSources, id: \.self) { direction in
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
  struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
      SecondView()
    }
  }
