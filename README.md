# show_up_animation [![Build Status](https://travis-ci.com/ashutoshsingh05/show_up_animation.svg?branch=master)](https://travis-ci.com/ashutoshsingh05/show_up_animation)

A flutter package to simplify implementation of "show up" animation in flutter

## Getting Started

Install dependencies

```yaml
dependencies:
  show_up_animation: ^0.0.1
```

Then import wherever you want to implement the animation

```dart
import 'package:show_up_animation/show_up_animation.dart';
```

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

## Properties

You can customize how to do you want to animate your `child` using the parameters described below.

| Property          | Function                                                                                                                                  |
| ----------------- | ----------------------------------------------------------------------------------------------------------------------------------------- |
| child             | The widget on which to apply the given `ShowUpAnimation`                                                                                  |
| offset            | The offset by which to slide and [child] into view from [Direction]. Use negative value to reverse animation [direction]. Defaults to 0.2 |
| curve             | The curve used to animate the [child] into view. Defaults to [Curves.easeIn]                                                              |
| direction         | horizontal or vertical                                                                                                                    |
| delayStart        | The delay with which to animate the [child]. Takes in a [Duration] and defaults to 0 seconds                                              |
| animationDuration | The total duration in which the animation completes. Defaults to 800 milliseconds                                                         |

## Demo

![videotogif_2020 04 21_19 44 01](https://user-images.githubusercontent.com/42690541/79876554-d2d4fd00-8408-11ea-9b8e-550954f618f3.gif)
