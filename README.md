<h1 align="center"> Лабораторна робота №9 </h1>
<h2 align="center"> Створення власних віджетів, успадкованих від класу <b>StatefulWidget</b>. Віджет класу <b>Gesture Detector</b></h2>

### Розробити графічний інтерфейс згідно рисунку, представленого в [лабораторній роботі №6](https://github.com/de-vasta/flutter_6), але в стилі _material design_ з використанням власного віджету, успадкованого від класу `StatefulWidget` з передачею даних (min 3 властивості) через параметри його конструктора.

#### Code
[![main.dart](https://img.shields.io/badge/main-dart-2eb2ee?style=flat-square&logo=flutter&labelColor=02569B&logoColor=55c0f0)](lib/main.dart)&nbsp;

#### Overview
![flutter_9](https://i.imgur.com/G9qIGFg.png)   

------

https://user-images.githubusercontent.com/55552780/208735600-7ab7ff6b-fabf-4137-a3e3-2c495291ea4c.mp4

#### Контрольні запитання
1. Стан віджету - це певні дані, які готові змінити своє значення/властивості в будь-який час при роботі додатку.
2. Об'єкт класу `State`:
```dart
@override
  State<YourStatefulWidgetName> createState() => <YourStateVariableName>();
```

3. Передавати дані об'єкту `State` можна за допомогою `widget.<дані>`. Передавати дані через конструктор об'єкта `State` не рекомендується.
4. Властивість `widget` дає змогу звертатися до `Stateful` віджета (у якому якраз і знаходиться `State`) всередині структури `State`.
5. Наперед визначений метод `setState()`.
