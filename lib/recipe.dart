class Recipe {
  String label;
  String imageUrl;
  String details;
  double rating;
  int votes;
  String madeBy;
  int servings;
  String duration;
  String cookingTime;
  List<Ingredient> ingredients;
  String total;
  String additional;

  Recipe(
      this.label,
      this.imageUrl,
      this.details ,
      this.madeBy,
      this.servings,
      this.ingredients,
      this.duration,
      this.cookingTime,
      this.total,
      this.additional,
      this.rating,
      this.votes,
      );

  static List<Recipe> samples = [
    Recipe(
      'Classic Waffles',
      'assets/images/ClassicWaffles.jpg',
      'A classic waffle recipe includes basic ingredients you probably already have on hand, creating a perfectly crisp breakfast item.',
      'Allrecipes Member',
      5,
      [
        Ingredient(2 , 'cups', 'All-purpose flour',),
        Ingredient(1, 'teaspoon', 'Salt',),
        Ingredient(4, 'teaspoons', 'Baking powder',),
        Ingredient(2, ' ', 'Eggs',),
        Ingredient(1.5, ' cups', 'Warm milk',),
        Ingredient(0.3, 'cup', 'Butter , melted',),
        Ingredient(1, 'teaspoon ', 'Vanilla extract',),
      ],
      '10 mins',
      '15 mins',
      '25 mins',
      '0',
      4.5,
      3822,
    ),

    Recipe(
      'Quick Chicken Piccata',
      'assets/images/QuickChickenPiccata.jpg',
      'These quick and easy pan-fried chicken breasts are topped with a simple pan sauce made with capers, butter, white wine, and lemon juice.',
      'Chef John',
      4,
      [
        Ingredient(4 , ' ', 'Skinless ,boneless chicken breast halves',),
        Ingredient(1, 'teaspoon', 'Capers, drained',),
        Ingredient(2, 'teaspoons', 'Olive oil',),
        Ingredient(1, ' ', 'Eggs',),
        Ingredient(0.25, 'cup', 'Fresh lemon juice',),
        Ingredient(0.25, 'cup', 'Water',),
        Ingredient(3, 'tablespoons', 'Cold unsalted butter, cut in 1/4-inch slices , melted',),
        Ingredient(2, 'tablespoons', 'Fresh Italian parsley, chopped',),
      ],
      '10 mins',
      '15 mins',
      '25 mins',
      '0',
      4.7,
      1620,
    ),

    Recipe(
      'Biscotti',
      'assets/images/Biscotti.jpg',
      'These biscotti are easy, quick, and my favorite Italian cookies. My friend at work gave me this simple, no-frills recipe.',
      'JANDEE',
      36,
      [
        Ingredient(1 , 'cup', 'White sugar',),
        Ingredient(0.5, 'cup', 'Vegetable oil',),
        Ingredient(3, 'drops', 'Anise oil',),
        Ingredient(3, ' ', 'Eggs',),
        Ingredient(3.25, 'cups', 'All-purpose flour',),
        Ingredient(1, 'tablespoon', 'Baking powder',),
      ],
      '15 mins',
      '40 mins',
      '1 hr 10 mins',
      '15 mins',
      4.6,
      1110,
    ),

    Recipe(
      'Old-Fashioned Lemonade',
      'assets/images/Old-Fashioned-Lemonade.jpg',
      "This classic lemonade recipe is the one my mom used to make for me when I was little. Ah, the taste of summer! It's the perfect combination of sweet and tart. When using a clear pitcher, adding a few of the juiced lemon halves makes it look prettier.",
      'EJRIPPY',
      6,
      [
        Ingredient(6 , ' ', 'Lemons',),
        Ingredient(1, 'cup', 'White sugar',),
        Ingredient(6, 'cups', 'Water, or more as needed',),
      ],
      '10 mins',
      '0',
      '10 mins',
      '0',
      4.8,
      426,
    ),

    Recipe(
      'Buffalo Chicken Stuffed Shells',
      'assets/images/Buffalo-Chicken-Stuffed-Shells.jpg',
      "This is a hit for football Sundays. For a thicker stuffing, drain ricotta overnight. Serve with ranch and blue cheese dressing for dipping.",
      'Kaid711',
      6,
      [
        Ingredient(1 , 'pound', 'Ground chicken',),
        Ingredient(0.25, 'cup', 'Butter',),
        Ingredient(1, 'cup', 'Cayenne pepper sauce',),
        Ingredient(1, ' ', 'Cooking spray',),
        Ingredient(16, 'ounce', 'Whipped ricotta cheese',),
        Ingredient(8, 'ounce', 'Shredded Cheddar-Monterey Jack cheese blend',),
        Ingredient(1, 'tablespoon', 'Salt and ground black pepper',),
      ],
      '15 mins',
      '25 mins',
      '3 hrs 40 mins',
      '3 hrs',
      4.1,
      120,
    ),
  ];
}

class Ingredient {
  double quantity;
  String measure;
  String name;
  Ingredient(
      this.quantity,
      this.measure,
      this.name,
      );
}