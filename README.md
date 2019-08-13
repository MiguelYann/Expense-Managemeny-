# expanse_project

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.


## Notes

> By default the size of Card Widget assume to size of its child

if you have to size the card you  may resize the size of its child

```dart
Card(
    child: Text('Allo)
)

// this card will take the size of Text. If you want to have a good size you might choose a layout widget, that can 
sets up the size  

```

```dart
Card(
    child:Container(
        child:Text("Allo")
))

// Here Card take size of Container
```
>  Rows and Columns are used to organize multiple sibling widgets.



> Column and Row are the core widgets for positional widget above or below each other. Row dispose widget horizontal and Column vertical.
> By default the Column take all the height that he can get

> We have two properties that ma,age position of widget within a Column and Row:
* mainAxisAlignment: from top to bottom, by default for Column and from left to right for Row
enum MainAxisAlignment{
    center,
    spaceAround,
    spaceBetween
}
* crossAxisAlignment: from left to right for Column by default and from top to bottom by default.

> We can specify which properties on name argument is required by adding decorator @required. We must add the package
package: flutter/foundation.dart, this features is on Flutter not dart




