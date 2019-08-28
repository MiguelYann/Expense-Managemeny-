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

> **Styling container**
You might use :
```dart
Container(
    margin: EdgeInsets.symetric(horizontal: ..., vertical:...),
    decoration: BoxDecoration(
        border: Border.all() // to set up border of container
    ),
    padding: EdgeInsets.all(8) // inside a container
)
```
> COLUMN VS ROW VS CONTAINER

> String interpolation

You can use the character $ for inject the reference of variable or property;
```dart
String name = "Miguel";
print("My name is " + name);
print(" My name is $name");// equivalent to above statement
int nombre = 4;
print("The variable named as nombre has " + nombre + "like value"); // ERROR int cannot match to String.

print("The variable named as nombre has " + nombre.toString() + "like value"); // This solve the problem

print("The variable named as nombre has $nombre + "like value"); // Another way to solve problem with interpolation String.
```

> Manage Date.
In Dart you have a specific data type for manage date. Any date as declare as **DateTime**.
Then you have few methods that can be called on DateTime object.

```dart

DateTime day1 = DateTime.now(); // Day1 point on current date
print(day1); // 2019-08-16 14:37:24.968

```

As we see the date is readable but you can formate, it's up to you. You have the dependencies in Flutter which are devlop for it, because Dart and Flutter don't have this core features.

* install intl in pubspec.yaml
* Manage Date
```dart
DateFormat().format(day1) // print better buy you can do more

/*
DateFormat() is provide by dependeny Intl. And you create an instance of it and call format method to our date, and it's return a String date
*/

DateFormat("dd-MM-yyyy").format(day1);
/*
DateFormat can take as property the pattern of format date you want as we are seing above.
*/

DateFormat.yMMMd().format(day1);
/*
As we see the class DateFormat can have more constructor that we can call. Here this constructor formate the date as you specify.
*/

```

* **Adding text input:** We have a widget that allows us to receive user input that he is named **TextField()**
* **Fetching user input:** We also hqve two way to fetch the user's input. 
**->** Use onChanged() method on TextField widget. We pass a pointer of a function thqt take one argument which are userInput.

```dart

String userInput;
TextField(
    onChanged: (input) => userInput = value;
)
```

**->** Use controller property. You may declare as property of widget an object of TextEditingController.

```dart

final controllerInput = TextEditingController();

TextField(
    controller: controllerInput
)
// if you want to fetch data that user was fit on field, use property tect.

print(controllerInput.text); // print user's input

```

> **Connecting Widgets and manging state and data**

Constructors is the way how we can pass data from parent widget to child widget.
When you create an object in Dart, the properties holds the pointer to this object, not the object hitself. Then when you write
```dart

final myObj = [1,3];
// myObj hold the adress of objetc or the pointer

myObj = [1,3,2]; // That provides an because myObj is final , and there you try to give another pointer to myObj

myObj.add(1); // It's work because you don't create a new object so the pointer stay the same 

//!NOTE the add method change the list but not change the refernece of object.So the pointe ris the same


```

You can manage data and state with connected widget by creating a intermediate widget which is the only stateful widget.


> **SingleChildSCrollView** : add a scrollable screen. It is used to wrap widget which are height or content!.

> **ListView**: WWe have two parts of using  ListView
* ListView Widget: It's look like a column wrap in SingleChildScrollView
* Another constructor of ListView. ListView.builder() which is wrap in a container.  This method is more used when you don't know the number of items which are build.

```dart

ListView.builder(
    itemBuilder: (context, index){
        return ...
    } ,// property for every item which widget will be display

    itemCount: // number of element you want to build

)
```

>  Further styling input and Output

* Change keyboard's display: We have to use keyboardType's properties of TextField:
* If you want to validate by submiting  with validator keyboard you may use onSubmitted property
```dart
onSubmitted: (_) => maFonction()
// onSubmitted it is a function that takes a parameter String. Then if you don't have to use this parameter
// too, you may put underscore

void maFonction(){

}
```

* If you wqnt to format String use the mesthod toStringAsFixed(int precision)

> FloatingActionButton and Icon on appBar:

We can add a icon button at the bottom of screen by using the floatingActionButton's property of Scaffold. Then we can also add button on top screen by using actions property of Appbar

```dart

Scaffold(
    floatingActionButton: FloationActionButton(
        child: ... //icon
        backgroundColor: 
    ),
    appBar: AppBar(
        actions: [
            IconButton(icon: Icons.add, onPressed:) // create an icon that can hit on appBar.
        ]
    )

)

```

> **Show modal bottom sheet and styling it **: This allows us to have a bottom modal. Its a function provides by Flutter.
This method required at least two arguments.

``` 
showModalBottomSheet(
    context:
    builder:

)

// You have a GestureDetector that helps us to manage gesture on Widget

GestureDetector(
    child: Widget,
    onTap: (){} // if lik ethat when you that on widget , he will not be disappear.

)
