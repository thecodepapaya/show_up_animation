# show_up_animation [![Build Status](https://travis-ci.com/thecodepapaya/show_up_animation.svg?branch=master)](https://travis-ci.com/thecodepapaya/show_up_animation)

A flutter package to simplify the implementation of "show up" animation

## Getting Started

Install dependencies

```yaml
dependencies:
  show_up_animation: ^2.1.2
```

Then import wherever you want to implement the animation

```dart
import 'package:show_up_animation/show_up_animation.dart';
```

### ShowUpAnimation

Wrap any widget you want to animate inside `ShowUpAnimation` widget and provide a `Duration()` to `delayStart` field to control after how much delay the animation fires.

```dart
ShowUpAnimation(
  delayStart: Duration(seconds: 1),
  animationDuration: Duration(seconds: 1),
  curve: Curves.bounceIn,
  direction: Direction.vertical,
  offset: 0.5,
  child: YourWidget(),
),
```

### ShowUpList

To create a list of "show up" animations, use `ShowUpList` and provide
your list of widgets to `children` parameter.

```dart
ShowUpList(
  direction: Direction.horizontal,
  animationDuration: Duration(milliseconds: 1500),
  delayBetween: Duration(milliseconds: 800),
  offset: -0.2,
  children: <Widget>[
    Widget1(),
    Widget2(),
    Widget3(),
    Widget4(),
  ],
),
```

## Properties

### ShowUpAnimation Properties

You can customize how to do you want to animate your `child` using the parameters described below.

| Property          | Function                                                                                                                                  |
| ----------------- | ----------------------------------------------------------------------------------------------------------------------------------------- |
| child             | The widget on which to apply the given `ShowUpAnimation`                                                                                  |
| offset            | The offset by which to slide and [child] into view from [Direction]. Use negative value to reverse animation [direction]. Defaults to 0.2 |
| curve             | The curve used to animate the [child] into view. Defaults to [Curves.easeIn]                                                              |
| direction         | horizontal or vertical                                                                                                                    |
| delayStart        | The delay with which to animate the [child]. Takes in a [Duration] and defaults to 0 seconds                                              |
| animationDuration | The total duration in which the animation completes. Defaults to 800 milliseconds                                                         |

### ShowUpList Properties

| Property          | Function                                                                                                                                  |
| ----------------- | ----------------------------------------------------------------------------------------------------------------------------------------- |
| children          | The list of widgets on which to apply the given `ShowUpAnimation`                                                                         |
| offset            | The offset by which to slide and [child] into view from [Direction]. Use negative value to reverse animation [direction]. Defaults to 0.2 |
| curve             | The curve used to animate each [child] into view. Defaults to [Curves.easeIn]                                                             |
| direction         | horizontal or vertical                                                                                                                    |
| delayBetween      | he delay between animating each [children] into view. Takes in a [Duration] and defaults to 300 milliseconds                              |
| animationDuration | The total duration in which the animation of each child completes. Defaults to 500 milliseconds                                           |

## Demo

<img src=https://github.com/user-attachments/assets/9e4d5340-1374-482e-a669-2ad4bc44246d alt="Text demo" width="300">
<img src=https://github.com/user-attachments/assets/0ab08965-fe45-40e6-8e41-46892af73df2 alt="Show up list demo" width="300">
