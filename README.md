# 更新实现模型【json_serializable 6.4.0】

组件：[json_serializable](https://pub.flutter-io.cn/packages/json_serializable)



## 运行代码生成器

### 设计时组件依赖：build_runner

```
flutter pub add build_runner -d   
```

### 成生文件

将注释添加到代码后，您需要运行代码生成器来生成缺少的`.g.dart`生成的 dart 文件。

使用 Dart 包，

```
dart run build_runner build
```

在包目录中运行。

使用 Flutter 包，

```bash
flutter pub run build_runner build
```

在您的包目录中运行。

### 更新文件

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

## 使用代码生成库序列化 JSON 数据

尽管有其它库可以使用，但是本指南使用了 [`json_serializable`](https://pub.flutter-io.cn/packages/json_serializable)，一个自动化源代码生成器来为你生成 JSON 序列化数据模板。



**选择一个 library** 你也许已经发现了，在 pub.dev 上有两个用于生成 JSON 序列化代码的 [Flutter Favorite](https://flutter.cn/docs/development/packages-and-plugins/favorites) package， [`json_serializable`](https://pub.flutter-io.cn/packages/json_serializable) 以及 [`built_value`](https://pub.flutter-io.cn/packages/built_value)。那么你该如何在它们之间进行选择呢？ `json_serializable` package 能够通过注解让你的普通类序列化，而 `built_value` package 则提供了更高层次的方法，让定义为无变化的类也能够被序列化为 JSON。

由于序列化数据代码不再需要手动编写或者维护，你可以将序列化 JSON 数据在运行时的异常风险降到最低。

### 在项目中设置 json_serializable

要在你的项目中包含 `json_serializable`，你需要一个常规依赖，以及两个 **dev 依赖**。简单来说，**dev 依赖** 是不包括在我们的 App 源代码中的依赖——它们只会被用在开发环境中。

在序列化 JSON 数据的例子中，这些需要的依赖的最新版本可以在 [pubspec 文件](https://raw.githubusercontent.com/dart-lang/json_serializable/master/example/pubspec.yaml) 中查看。

**pubspec.yaml**

*content_copy*

```
dependencies:
  # Your other regular dependencies here
  json_annotation: <latest_version>

dev_dependencies:
  # Your other dev_dependencies here
  build_runner: <latest_version>
  json_serializable: <latest_version>
```

在你的项目根文件夹下运行 `flutter pub get` （或者在你的编辑器中点击 **Packages Get**）以确保在你的项目中可以使用这些新的依赖。

### 以 json_serializable 的方式创建模型类

下面显示了怎样将 `User` 类转换为 `json_serializable` 后的类。简单起见，该代码使用了前面的例子中的简化的 JSON 模型。

**user.dart**

*content_copy*

```dart
import 'package:json_annotation/json_annotation.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'user.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable()
class User {
  User(this.name, this.email);

  String name;
  String email;

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
```

通过这个设置，源代码生成器将生成用于 JSON 编码及解码 `name` 以及 `email` 字段的代码。

如果需要，你可以很轻易地自定义命名策略。例如，如果 API 返回带有 **蛇形命名方式** 的对象，并且你想要在你的模型里使用 **小驼峰** 的命名方式，你可以使用带有一个 name 参数的 `@JsonKey` 注解。

*content_copy*

```
/// Tell json_serializable that "registration_date_millis" should be
/// mapped to this property.
@JsonKey(name: 'registration_date_millis')
final int registrationDateMillis;
```

客户端和服务端最好保持同样的命名规则。 `@JsonSerializable()` 提供了 `fieldRename` 枚举，用于将 dart 字段完整转换为 JSON 键值。

定义 `@JsonSerializable(fieldRename: FieldRename.snake)` 与添加 `@JsonKey(name: '<snake_case>')` 到每一个字段是同样的效果。

服务端的数据有时无法确认，所以在客户端很有必要进行数据校验和保护。其他常见的 `@JsonKey` 声明方法包括：

*content_copy*

```
/// Tell json_serializable to use "defaultValue" if the JSON doesn't
/// contain this key or if the value is `null`.
@JsonKey(defaultValue: false)
final bool isAdult;

/// When `true` tell json_serializable that JSON must contain the key, 
/// If the key doesn't exist, an exception is thrown.
@JsonKey(required: true)
final String id;

/// When `true` tell json_serializable that generated code should 
/// ignore this field completely. 
@JsonKey(ignore: true)
final String verificationCode;
```

### 运行代码生成工具

当你首次创建 `json_serializable` 类时，你会得到类似下图的错误。

![IDE warning when the generated code for a model class does not exist yet.](https://flutter.cn/docs/assets/images/docs/json/ide_warning.png)

这些错误完全正常，很简单，因为这些模型类的生成代码并不存在。要解决这个问题，你需要运行代码生成器来生成序列化数据模板。

有两种方式运行代码生成器。

#### 一次性代码生成

通过在项目根目录运行 `flutter pub run build_runner build`，你可以在任何需要的时候为你的模型生成 JSON 序列化数据代码。这会触发一次构建，遍历源文件，选择相关的文件，然后为它们生成必须的序列化数据代码。

虽然这样很方便，但是如果你不需要在每次修改了你的模型类后都要手动构建那将会很棒。

#### 持续生成代码

**监听器** 让我们的源代码生成过程更加方便。它会监听我们项目中的文件变化，并且会在需要的时候自动构建必要的文件。你可以在项目根目录运行 `flutter pub run build_runner watch` 启动监听。

启动监听并让它留在后台运行是安全的。

### 使用 json_serializable 模型

为了以 `json_serializable` 的方式解码 JSON 字符串，你不必对以前的代码做任何的改动。

*content_copy*

```dart
Map<String, dynamic> userMap = jsonDecode(jsonString);
var user = User.fromJson(userMap);
```

编码也是如此。调用 API 和以前一样。

*content_copy*

```dart
String json = jsonEncode(user);
```

在使用了 `json_serializable` 后，你可以立马忘掉 `User` 类中所有手动序列化的 JSON 数据。源代码生成器会创建一个名为 `user.g.dart` 的文件，它包含了所有必须的序列化数据逻辑。你不必再编写自动化测试来确保序列化数据奏效。现在 **由库来负责** 确保序列化数据能正确地被转换。

## 为嵌套类 (Nested Classes) 生成代码

你可能类在代码中用了嵌套类，在你把类作为参数传递给一些服务（比如 Firebase）的时候，你可能会遇到 `Invalid argument` 错误。

比如下面的这个 `Address` 类：

*content_copy*

```dart
import 'package:json_annotation/json_annotation.dart';
part 'address.g.dart';

@JsonSerializable()
class Address {
  String street;
  String city;

  Address(this.street, this.city);

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
  Map<String, dynamic> toJson() => _$AddressToJson(this);
}
```

一个 `Address` 类被嵌套在 `User` 类中使用：

*content_copy*

```dart
import 'package:json_annotation/json_annotation.dart';

import 'address.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  User(this.name, this.address);

  String name;
  Address address;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
```

在终端中运行 `flutter pub run build_runner build` 创建 `*.g.dart`文件，但私有函数 `_$UserToJson()` 看起来会像下面这样：

*content_copy*

```
Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
  'name': instance.name,
  'address': instance.address,
};
```

现在看起来并没有什么问题，但当你想要打印 (`print()`) 这个用户对象时：

*content_copy*

```dart
Address address = Address('My st.', 'New York');
User user = User('John', address);
print(user.toJson());
```

结果会是：

*content_copy*

```
{name: John, address: Instance of 'address'}
```

而你期望的输出结果是这样的：

*content_copy*

```
{name: John, address: {street: My st., city: New York}}
```

为了得到正常的输出，你需要在类声明之前在 `@JsonSerializable` 方法加入 `explicitToJson: true` 参数， `User` 类现在看起来是这样的：

*content_copy*

```dart
import 'package:json_annotation/json_annotation.dart';

import 'address.dart';

part 'user.g.dart';

@JsonSerializable(explicitToJson: true)
class User {
  User(this.name, this.address);

  String name;
  Address address;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
```

了解更多信息，请查阅 [`json_annotation`](https://pub.flutter-io.cn/packages/json_annotation) 这个 package 里的 [`JsonSerializable`](https://pub.flutter-io.cn/documentation/json_annotation/latest/json_annotation/JsonSerializable-class.html) 类的 [`explicitToJson`](https://pub.flutter-io.cn/documentation/json_annotation/latest/json_annotation/JsonSerializable/explicitToJson.html) 参数等相关文档。

## 
