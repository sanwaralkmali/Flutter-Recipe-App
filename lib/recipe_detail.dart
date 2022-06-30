import 'package:flutter/material.dart';
import 'recipe.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;

  const RecipeDetail({ Key? key,required this.recipe, }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _RecipeDetailState createState() {
    return _RecipeDetailState();
  }
}
class _RecipeDetailState extends State<RecipeDetail> {
  int _sliderVal = 1;

  @override
  Widget build(BuildContext context) {
    String ser = widget.recipe.servings == 1 ? 'Person' : 'People';
    bool co = widget.recipe.cookingTime == '0' ? true : false;
    bool dt = widget.recipe.additional == '0' ? true : false;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
        ),
      body: SafeArea(
        
      child: SingleChildScrollView(
        child: SizedBox(
          width: 500.0,
          child: Column(
            children:[
              const SizedBox(
                height: 16.0,
              ),
              SizedBox(
                width: 500.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(widget.recipe.label ,
                    style: const TextStyle(
                      fontSize: 32,
                      fontFamily: 'IndieFlower',
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10.0,
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
                  Text('${widget.recipe.rating}')
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),

              Row(
              children: [
                const SizedBox(
                  width: 10.0,
                ),
               Text('${widget.recipe.votes} Votes' ,
               style: const TextStyle(
               fontSize: 16.0,
                 color: Colors.teal,
               ),
               ) ,
                const SizedBox(
                  width: 10.0,
                ),
                 SizedBox(
                  width: 1.75,
                  height: 15.0,
                  child: Container(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  width: 15.0,
                ),
                Text('${widget.recipe.votes} Reviews' ,
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.indigoAccent,
                  ),
                ) ,
              ],
              ),
            const SizedBox(
              height: 24.0,
            ),
              SizedBox(
                child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage(widget.recipe.imageUrl),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                elevation: 5,
                shadowColor: Colors.green,
                margin: const EdgeInsets.all(5),
                shape:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(color: Colors.green, width: 1)
                ),
                child: Column(
                  children: <Widget> [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: <Widget> [
                          const Text('Prep : ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(widget.recipe.duration),
                        ],
                      ),
                    ),
                    if (!co)
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: <Widget> [
                          const Text('Cook : ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(widget.recipe.cookingTime),
                        ],
                      ),
                    ),
                    if(!dt)
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: <Widget> [
                          const Text('Additional : ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(widget.recipe.additional),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: <Widget> [
                          const Text('Total : ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(widget.recipe.total),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: <Widget> [
                          const Text('Servings : ' ,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          Text('${_sliderVal * widget.recipe.servings} $ser'),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 14.0,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
             const  SizedBox(
               width: 500.0,
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child:  Text('Ingredients' ,
                  style: TextStyle(
                    fontFamily: 'BebasNeue',
                    fontSize: 32.0,
                  ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Column(
                children: [
                  for (var i in widget.recipe.ingredients) SizedBox(
                    child: Column(
                      children: [
                        SizedBox(
                          width: 500.0,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text('${i.quantity * _sliderVal}  '
                                '${i.measure} '
                                '${i.name} ' ,
                            style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w300,
                            ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ),
                  Slider(
                    min: 1,
                    max: 10,
                    divisions: 10,
                    label: '${_sliderVal * widget.recipe.servings} servings',
                    value: _sliderVal.toDouble(),
                    onChanged: (newValue) {
                      setState(() {
                        _sliderVal = newValue.round();
                      });
                    },
                    activeColor: Colors.green,
                    inactiveColor: Colors.black,
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      ),
    );
  }
}