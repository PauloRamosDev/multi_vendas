 import 'package:flutter/material.dart';

class ListModel<E> {
   ListModel({
     @required this.listKey,
     @required this.removedItemBuilder,
     Iterable<E> initialItems,
   }) : assert(listKey != null),
        assert(removedItemBuilder != null),
        _items = List<E>.from(initialItems ?? <E>[]);

   final GlobalKey<SliverAnimatedListState> listKey;
   final dynamic removedItemBuilder;
   final List<E> _items;

   SliverAnimatedListState get _animatedList => listKey.currentState;

   void insert(int index, E item) {
     _items.insert(index, item);
     _animatedList.insertItem(index);
   }

   E removeAt(int index) {
     final E removedItem = _items.removeAt(index);
     if (removedItem != null) {
       _animatedList.removeItem(
         index,
         (BuildContext context, Animation<double> animation) => removedItemBuilder(removedItem, context, animation),
       );
     }
     return removedItem;
   }

   int get length => _items.length;

   E operator [](int index) => _items[index];

   int indexOf(E item) => _items.indexOf(item);
 }

 class CardItem extends StatelessWidget {
   const CardItem({
     Key key,
     @required this.animation,
     @required this.item,
     this.onTap,
     this.selected = false,
   }) : assert(animation != null),
        assert(item != null && item >= 0),
        assert(selected != null),
        super(key: key);

   final Animation<double> animation;
   final VoidCallback onTap;
   final int item;
   final bool selected;

   @override
   Widget build(BuildContext context) {
     return Padding(
       padding:
       const EdgeInsets.only(
         left: 2.0,
         right: 2.0,
         top: 2.0,
         bottom: 0.0,
       ),
       child: SizeTransition(
         axis: Axis.vertical,
         sizeFactor: animation,
         child: GestureDetector(
           onTap: onTap,
           child: SizedBox(
             height: 80.0,
             child: Card(
               color: selected
                 ? Colors.black12
                 : Colors.primaries[item % Colors.primaries.length],
               child: Center(
                 child: Text(
                   'Item $item',
                   style: Theme.of(context).textTheme.headline4,
                 ),
               ),
             ),
           ),
         ),
       ),
     );
   }
 }