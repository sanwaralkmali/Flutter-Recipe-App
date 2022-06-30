import 'package:flutter/material.dart';
import 'package:recipes/recipe.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'recipe_detail.dart';

class BuildRecipeCard extends StatefulWidget {
  const BuildRecipeCard({Key? key, required this.recipe}) : super(key: key);
  final Recipe recipe;

  @override
  State<BuildRecipeCard> createState() => _BuildRecipeCardState();
}
class _BuildRecipeCardState extends State<BuildRecipeCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        shadowColor: Colors.black,
        elevation: 5.0,
        child:  SizedBox(
          width: 450.0,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget> [
                Image.asset(widget.recipe.imageUrl),
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: 380.0,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return RecipeDetail(recipe: widget.recipe);
                          },
                        ),
                      );
                    },
                    child: Text(widget.recipe.label ,
                      style: const TextStyle(
                        fontSize: 19,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                SizedBox(
                  width: 380.0,
                  height: 0.5,
                  child: Container(
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 20.0,
                    ),
                    RatingBarIndicator(
                      rating: widget.recipe.rating,
                      itemBuilder: (context, index) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 25.0,
                      direction: Axis.horizontal,
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Text('${widget.recipe.votes}' ,
                      style: const TextStyle(
                          fontSize: 16.0,
                          color: Colors.green
                      ),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    const Text('votes' ,
                      style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.teal,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16.0,
                ),
                SizedBox(
                  width: 380.0,
                  child: Text(
                    widget.recipe.details,
                    style:const TextStyle(
                      fontSize: 14,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w200,
                      height: 1.5,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 18.0,
                ),
                SizedBox(
                  width: 380.0,
                  child: Text('By : ${widget.recipe.madeBy}',
                    style: const TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
