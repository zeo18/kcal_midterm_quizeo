import 'package:kcal_nutrition_app/Recipes/ingredients.dart';
import 'package:kcal_nutrition_app/Recipes/recipes.dart';

class RecipeUtils {
  static List<Recipe> getRecipeData() {
    return [
      Recipe(
        imgPath: 'assets/recipe/cheeseCrustedChicken.jpg',
        recipeName: 'Cheese Crusted Chicken',
        timeCook: 30,
        servings: 8,
        shortDesc:
        'This chicken dish is easy enough to make for a quick weeknight dinner but also elegant enough for company.',
        recipeDesc:
        'This crispy, cheese crusted chicken is a tried-and-true treat no one can resist.',
        listIngredients: [
          Ingredients(
            ingredientName: 'Halves Boneless Skinless Chicken Breast',
            amount: 4,
            measurement: 'piece',
            imgPath: 'assets/recipe/ingredients/chickenBreast.jpg',
          ),
          Ingredients(
            ingredientName: 'Eden Mayo',
            amount: 1 / 2,
            measurement: 'cup',
            imgPath: 'assets/recipe/ingredients/edenMayo.png',
          ),
          Ingredients(
            ingredientName: 'Eden Original, Grated',
            amount: 1 / 4,
            measurement: 'cup',
            imgPath: 'assets/recipe/ingredients/eden.png',
          ),
          Ingredients(
            ingredientName: 'Breadcrumbs',
            amount: 4,
            measurement: 'tsp',
            imgPath: 'assets/recipe/ingredients/breadCrumbs.png',
          ),
        ],
        directions: [
          'Preheat oven to 425F.',
          'In a bowl, combine Eden Mayo with grated Eden cheese.',
          'On a baking sheet, place the chicken and top with the mixture. Sprinkle bread crumbs on top.',
          'Bake for around 20 minutes, until chicken is golden brown and tender.',
        ],
      ),
      Recipe(
        imgPath: 'assets/recipe/cheddarChicken.jpg',
        recipeName: 'Cheddar Chicken',
        timeCook: 35,
        servings: 10,
        shortDesc:
        'Cheddar Chicken is tender chicken breast pieces are coated in a cheesy crumb crust, baked until golden, then topped with a simple chicken.',
        recipeDesc:
        'Prepare these juicy baked chicken breasts coated in a rich and creamy breading.',
        listIngredients: [
          Ingredients(
            ingredientName: 'Cornflakes cereal, crusted',
            amount: 1,
            measurement: 'cups',
            imgPath: 'assets/recipe/ingredients/cornFlakes.jpg',
          ),
          Ingredients(
            ingredientName: 'Eden Original, Grated',
            amount: 3 / 4,
            measurement: 'cup',
            imgPath: 'assets/recipe/ingredients/eden.png',
          ),
          Ingredients(
            ingredientName: 'Halves Boneless Skinless Chicken Breast',
            amount: 8,
            measurement: 'pieces',
            imgPath: 'assets/recipe/ingredients/chickenBreast.jpg',
          ),
          Ingredients(
            ingredientName: 'creole-style seasoning',
            amount: 1,
            measurement: 'tbsp',
            imgPath: 'assets/recipe/ingredients/creoleStyle.png',
          ),
          Ingredients(
            ingredientName: 'Garlic Salt',
            amount: 1,
            measurement: 'tbsp',
            imgPath: 'assets/recipe/ingredients/garlicSalt.png',
          ),
          Ingredients(
            ingredientName: 'Cayenne Pepper',
            amount: 1 / 2,
            measurement: 'tsp',
            imgPath: 'assets/recipe/ingredients/cayennePepper.png',
          ),
          Ingredients(
            ingredientName: 'Butter, Melted',
            amount: 1 / 2,
            measurement: 'cup',
            imgPath: 'assets/recipe/ingredients/butterMelted.jpg',
          ),

        ],
        directions: [
          'Preheat oven to 350F.',
          'Lightly grease a 9x13 inch baking dish.',
          'In a large bowl, mix the cornflake crumbs, Eden Original, Kraft Cheddar, garlic salt, seasoning, and cayenne pepper.',
          'Separately, pour the melted butter into a dish. Coat chicken breast halves with melted butter and roll in cornflake crumb mixture. Put the coated chicken breast in the baking dish.',
          'Bake chicken for 40 minutes until the juices run clear and chicken is golden brown.',
        ],
      ),
      Recipe(
        imgPath: 'assets/recipe/cheesyLecheFlan.png',
        recipeName: 'Cheesy Leche Flan',
        timeCook: 40,
        servings: 8,
        shortDesc:
        'Leche Flan (Caramel Custard) is my family’s all time favorite dessert. The decadent custard topped with the smooth caramel is such a delight to the eyes as well as to the palate.',
        recipeDesc: 'Level up the creaminess of Leche Flan with rich cheese',
        listIngredients: [
          Ingredients(
            ingredientName: 'Eden Melt Sarap, Slight Melted',
            amount: 230,
            measurement: 'grams',
            imgPath: 'assets/recipe/ingredients/edenMelted.png',
          ),
          Ingredients(
            ingredientName: 'Sugar',
            amount: 8,
            measurement: 'tbsp',
            imgPath: 'assets/recipe/ingredients/sugar.png',
          ),
          Ingredients(
            ingredientName: 'Evaporated Milk',
            amount: 1,
            measurement: 'can',
            imgPath: 'assets/recipe/ingredients/evapMilk.png',
          ),
          Ingredients(
            ingredientName: 'eggs',
            amount: 5,
            measurement: 'pieces',
            imgPath: 'assets/recipe/ingredients/eggs.png',
          ),
          Ingredients(
            ingredientName: 'Eden Original, Shredded',
            amount: 1 / 2,
            measurement: 'cup',
            imgPath: 'assets/recipe/ingredients/eden.png',
          ),
        ],
        directions: [
          'Put the sugar in a large llanera. Place over low heat until the sugar has melted and golden. Occasionally move the llanera to avoid burning and to distribute sugar evenly. Remove from heat and allow it to harden.',
          'In a bowl, beat Eden Melt Sarap until smooth. Add eggs one at a time. Make sure to beat the mixture after each egg is added. Add evaporated milk and condensed milk. Mix well. Once thoroughly mixed, let the mixture sit for a few minutes.',
          'Cover llanera with foil and place in a baking dish with 1-inch water. Bake for 375F for 1 hour or until a toothpick inserted into the leche flan comes out clean. Remove from oven and allow to cool. Turn leche flan over on a serving dish. Top with shredded Eden cheese and enjoy!',

        ],
      ),
    ];
  }
}