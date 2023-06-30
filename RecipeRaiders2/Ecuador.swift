//
//  Ecuador.swift
//  RecipeRaiders2
//
//  Created by Sampada Baral on 6/29/23.
//

import SwiftUI

struct Ecuador: View {
    let green = Color(red: 0.659, green: 0.773, blue: 0.408)
    let beige = Color(red: 0.941, green: 0.827, blue: 0.725)
    let forestGreen = Color(red: 0, green: 0.2, blue: 0.125)
    let blue = Color(red: 0.757, green: 0.816, blue:0.906)
    let locroIngredients = ["10 medium sized potatoes (peeled and chopped into small and large pieces)", "2 tablespoons oil", "1 diced white onion", "2 minced garlic cloves", "2 tsp cumin", "1 tsp achiote powder", "7 cups of water", "1 cup of milk (or more)", "1 cup grated or crumbled cheese quesillo, queso fresco, mozzarella or monterey jack", "1 bunch of minced cilantro leaves only", "Salt to taste", "1 cup of queso fresco feta cheese, or grated mozzarella","Maiz tostado or cancha corn nuts", "Chopped cilantro and green onions", "Sliced or diced avocados", "Ecuadorian tree aji hot sauce"]
    let locroDirections = ["1. Prepare a base for the soup by heating the oil over medium heat in a large soup pot.", "2. Add  the diced onions, minced garlic cloves, cumin, and achiote powder to the pot.", "3. Cook, stirring frequently, until the onions are tender (about 5 minutes).", "4. Add the potatoes to the pot and mix until they are coated with the refrito. Cook for about 5 minutes, stirring a every couple of minutes.", "5. Add the water and bring it to a boil and cook until the potatoes are very tender.", "6. Use a potato masher to mash the potatoes in the pot, don’t mash all of them, the consistency of the soup should be creamy with small tender chunks of potatoes.", "7. Turn the heat down to low, stir in the milk and let cook for about 5 more minutes. You can add more milk if the soup is too thick.", "8. Add salt to taste, the grated cheese and cilantro. Mix well and remove the soup from the heat.", "9. You can serve the locro de papa warm with the avocados, scallions, queso or feta cheese and aji hot sauce."]
    let locroSources = ["                                                                                  Recipe: https://www.laylita.com/recipes/locro-de-papa-creamy-potato-soup-with-cheese/                                     ", "                                                                                  Image: https://www.cocina-ecuatoriana.com/recetas/sopas/locro-ecuatoriano"]
    var body: some View {
      ZStack {
        green.ignoresSafeArea()
        ScrollView {
          VStack (spacing: 20) {
            Image("Locro")
              .resizable()
              .aspectRatio(contentMode: ContentMode.fit)
              .cornerRadius(30)
              .background(Rectangle()
                .foregroundColor(beige))
              .cornerRadius(40)
              .padding()
            HStack (spacing: 100) {
              Text("🍲  Locro de Papa 🍲")
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
            Text("Locro de papa is an Ecuadorian dish that originates from the highlands of the Andes mountains and is usually served as the first course.")
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
              ForEach(locroIngredients, id: \.self) { ingredient in
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
          .navigationTitle("🍲")
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
struct Ecuador_Previews: PreviewProvider {
    static var previews: some View {
        Ecuador()
    }
}
