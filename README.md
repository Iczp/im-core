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

