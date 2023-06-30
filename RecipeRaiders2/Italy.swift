//
//  Italy.swift
//  RecipeRaiders2
//
//  Created by Sampada Baral on 6/29/23.
//

import SwiftUI

struct Italy: View {
    let green = Color(red: 0.659, green: 0.773, blue: 0.408)
    let beige = Color(red: 0.941, green: 0.827, blue: 0.725)
    let forestGreen = Color(red: 0, green: 0.2, blue: 0.125)
    let blue = Color(red: 0.757, green: 0.816, blue:0.906)
    let raguIngredients = ["10 2/3 oz of beef mince, 15% fat", "5 1/3 oz of pork mince", "1 3/4 oz of unsalted butter", "1 3/4 oz of onion, finely chopped", "1 3/4 oz of carrots, finely chopped", "1 3/4 oz of celery, finely chopped", "4 1/4 fl oz of red wine", "1 1/16 oz of tomato paste, triple concentrated", "4 1/4 fl oz of whole milk", "salt to taste", "black pepper to taste"]
    let raguDirections = ["1. Place a large thick-bottomed saucepan over a medium heat. Add the minced pork belly to the pot and cook until all the liquid from the meat has evaporated.", "2. Add the minced beef and cook until golden, stirring frequently. Then transfer the meat to a bowl and set aside.", "3. Add the butter to the saucepan and place over a medium heat. Then add the onion, carrot and celery and cook until the onions are very soft and translucent.", "4. Add the tomato paste and sauté for 5 more minutes while stirring occasionally. Next, return the meat to the saucepan, turn up the heat and pour in the red wine.", "5. Cook over a high heat for 2 minutes, then cover the pan and turn the heat to low. Leave the ragù alla Bolognese to simmer very gently for at least 3 hours.", "6. Pour in the whole milk and cook for 40 more minutes just before serving."]
    let raguSources = ["                                                                                  Recipe: https://www.greatitalianchefs.com/recipes/bolognese-ragu-recipe                                     ", "                                                                                  Image: https://recipe30.com/ragu-alla-bolognese.html/"]
    var body: some View {
      ZStack {
        green.ignoresSafeArea()
        ScrollView {
          VStack (spacing: 20) {
            Image("Ragu")
              .resizable()
              .aspectRatio(contentMode: ContentMode.fit)
              .cornerRadius(30)
              .background(Rectangle()
                .foregroundColor(beige))
              .cornerRadius(40)
              .padding()
            HStack (spacing: 100) {
              Text("🍝  Ragù alla Bolognese  🍝")
                .font(.title)
                .fontWeight(.black)
                .foregroundColor(forestGreen)
                .multilineTextAlignment(.center)
            }
            Text("           Did you know?          ")
              .font(.headline)
              .foregroundColor(forestGreen)
              .fontWeight(.regular)
              .padding()
              .background(Rectangle()
                .foregroundColor(blue))
              .cornerRadius(30)
            Text("Ragù alla Bolognese is an Italian dish, known as Bolognese sauce in English. Its origins are linked to France, and the first version if its recipe was found in an Italian chef’s 1800s cookbook. In the 1980s, the Bolognese Delegation of the Italian Academy of Cuisine patented the recipe, but you’ll find very different versions from different Bolognese families!")
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
              ForEach(raguIngredients, id: \.self) { ingredient in
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
          .navigationTitle("🍝")
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
            ForEach(raguDirections, id: \.self) { direction in
              Text(direction)
                .font(.body)
                .multilineTextAlignment(.leading)
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
            ForEach(raguSources, id: \.self) { direction in
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
struct Italy_Previews: PreviewProvider {
    static var previews: some View {
        Italy()
    }
}
