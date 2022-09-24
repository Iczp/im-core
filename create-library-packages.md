# 创建 package

https://dart.cn/guides/libraries/create-library-packages

在 Dart 生态系统中使用 [packages](https://dart.cn/guides/packages) 实现共享软件，比如一些 Library 和工具。本章将通过最常见的 [Library Package](https://dart.cn/tools/pub/glossary#library-package) 来介绍如何创建一个 Package。

## 创建一个新的 package

若要为 package 创建一个初始化的目录和结构，使用 [`dart create`](https://dart.cn/tools/dart-create) 命令，并加入 `package` 作为命令参数来创建：

```
$ dart create -t package <PACKAGE_NAME>
```

## Library Package 的组成

下图展示了最简单的 Library Package 布局：

![root directory contains pubspec.yaml and lib/file.dart](https://dart.cn/assets/img/libraries/simple-lib2.png)

Library 的最基本要求包括：

pubspec 文件
Library 的 `pubspec.yaml` 文件与应用程序的 `pubspec.yaml` 文件相同— `pubspec.yaml` 文件中并没有特别的指出这个 Package 是一个 Library 。

lib 目录
如你所料， Library 的代码位于 *lib* 目录下，且对于其他 Package 是公开的。你可以根据需要在 **lib** 下任意创建组织文件结构。按照惯例，实现代码会放在 **lib/src** 目录下。 lib/src 目录下的代码被认为是私有的。其他 Package 应该永远不需要导入 `src/...` 目录下代码。通过导出 lib/src 目录的文件到一个 lib 目录的文件，实现对 lib/src 目录中 API 的公开。

 **备注:**

在未指定 `library` 命令下，每个 Library 会根据它的路径及文件生成一个唯一标记。因此，这里我们建议在你的代码中忽略 `library` 命令，除非想要 [生成 Library-Level 文档](https://dart.cn/guides/libraries/create-library-packages#documenting-a-library)。

</dl>

## 组织 Library Package

在创建一个小的，独立的 Library（称之为 **Mini Library**）。 Library Package 非常容易维护，扩展和测试。大多数情况下，除非存在两个类紧密耦合的情况，否则每个类都应该将自己视为一个 Mini Library 。

 **备注:**

在文件的头部使用 `part` 命令，能够将一个 Library 分割成多个 Dart 文件。这里，我们建议应该创建 Mini Library ，而避免使用 `part` 命令。

直接在 lib 目录下创建“主” Library 文件，lib/*<package-name>*.dart，该文件导出所有的公开的 API 。这样就可以允许使用者导入单个文件就能够获得 Library 的所有功能。

lib 目录还可能包含其他可导入的非src Library。例如，主 Library 可能是跨平台的，但创建的独立 Library 依赖于 dart:io 或 dart:html 。 Some packages have separate libraries that are meant to be imported with a prefix, when the main library is not.（无法确切理解含义，暂未翻译）

这里让我们来看下一个真实 Library Package 的组织结构：shelf 。 [shelf](https://github.com/dart-lang/shelf) Package 提供了一种使用 Dart 创建 Web 服务器的简便方法，它的布局在 Dart Library Package 中是一种常用布局：

![shelf root directory contains example, lib, test, and tool subdirectories](https://dart.cn/assets/img/libraries/shelf.png)

主 Library 文件 `shelf.dart` 在 lib 目录下，通过 `shelf.dart` 文件导出 lib/src 目录下的若干文件。为了不导出过多的 API，并且为开发者提供公开的 API 的概览， `shelf.dart` 使用了 `show` 来指定哪些内容需要导出：

```
export 'src/cascade.dart' show Cascade;
export 'src/handler.dart' show Handler;
export 'src/hijack_exception.dart' show HijackException;
export 'src/middleware.dart' show Middleware, createMiddleware;
export 'src/middleware/add_chunked_encoding.dart' show addChunkedEncoding;
export 'src/middleware/logger.dart' show logRequests;
export 'src/middleware_extensions.dart' show MiddlewareExtensions;
export 'src/pipeline.dart' show Pipeline;
export 'src/request.dart' show Request;
export 'src/response.dart' show Response;
export 'src/server.dart' show Server;
export 'src/server_handler.dart' show ServerHandler;
```

在 shelf Package 中同样包含了 Mini Library：shelf_io 。适配器用来处理来自 `dart:io` 的 HttpRequest 对象。

 **小提示:**

为了在开发时使 [dartdevc](https://dart.cn/tools/dartdevc) 工具能够达到最佳新能，应该将 [实现文件](https://dart.cn/tools/pub/package-layout#implementation-files) 放到目录 `/lib/src` 下，而不是 `/lib` 目录的其他地方。另外，避免通过 `package:*package_name*/src/...` 导入文件。

## 导入 Library 文件

在从其他 package 导入 Library 文件时，使用 `package:` 命令来指定文件的 URI 。

```
import 'package:utilities/utilities.dart';
```

在两个文件都在 lib 目录中，或两个文件都在 lib 目录外，我们都可以使用相对路径的方式导入 Library 。但是，如果两个文件不都在 lib 目录中，需要对 lib 内或者 lib 外进行查找，那么此时必须要使用 `package:` 导入。如果对当前使用存在疑惑，那么直接 `package:` ； `package:` 满足所有情况。

下面图片展示分别从 lib 和 web 目录中导入 `lib/foo/a.dart` 。

![lib/bar/b.dart uses a relative import; web/main.dart uses a package import](https://dart.cn/assets/img/libraries/import-lib-rules.png)

## 条件导入或条件导出 Library 文件

如果你的 library 支持多平台，那么你应该会用到条件导入或条件导出 library 文件。常见的用例是，一个库同时支持 Web 和 Native 平台。

为了使用条件导入或条件导出，你需要检查是否存在 `dart:*` 库。下面是一个条件导出代码的样例，它将检查是否存在 `dart:io` and `dart:html` 库：

```dart
export 'src/hw_none.dart' // Stub implementation
    if (dart.library.io) 'src/hw_io.dart' // dart:io implementation
    if (dart.library.html) 'src/hw_html.dart'; // dart:html implementation
```

lib/hw_mp.dart

该代码的作用如下：

- 在一个可以使用 `dart:io` 的 app 中（例如一个命令行应用），导出 `src/hw_io.dart`。
- 在一个 web 应用中可以使用 `dart:html` 导出 `src/hw_html.dart`。
- 若是其他情况，则导出 `src/hw_none.dart`。

要条件导入一个文件可以使用和上面一样的方式，仅需将 `export` 改为 `import` 即可。

 **备注:**

条件导入或条件导出仅检查该库在当前平台上_是否可用_，而不管是实际导入还是使用。

所有条件导出的库必须实现相同的 API。下面是 `dart:io` 实现的一个例子：

```dart
import 'dart:io';

void alarm([String? text]) {
  stderr.writeln(text ?? message);
}

String get message => 'Hello World from the VM!';
```

lib/src/hw_io.dart

这是一个默认实现，它会导致抛出 `UnsupportedErrors`：

```dart
void alarm([String? text]) => throw UnsupportedError('hw_none alarm');

String get message => throw UnsupportedError('hw_none message');
```

lib/src/hw_none.dart

在任何平台上，你都可以导入具有条件导出代码的库：

```dart
import 'package:hw_mp/hw_mp.dart';

void main() {
  print(message);
}
```

## 提供额外文件

一个精心设计的 Library Package 很容易被测试。我们建议使用 [test](https://github.com/dart-lang/test) Package 编写测试用例，并将测试代码放到 Package 根目录的 `test` 目录中。

如果要创建一个公用的命令行工具，应该将这些工具放到公共目录 `bin` 中。使用 [`pub global activate`](https://dart.cn/tools/pub/cmd/pub-global#activating-a-package) 命令行来运行工具。在 pubspec 的 [`executables` 部分](https://dart.cn/tools/pub/pubspec#executables) 列出的工具允许用户直接运行它而无需调用 [`pub global run`](https://dart.cn/tools/pub/cmd/pub-global#running-a-script-using-pub-global-run)。

在 Library 中包含一个 example 程序演示如何使用 Library 是非常有用的。 example 程序在 Package 根目录的 `example` 目录中。

在开发过程中任何非公开的工具或可执行程序，应该放到 `tool` 文件夹。

如果要将 Library 发布到 Pub 网站还要求一些其他的文件来描述 [发布的 Package](https://dart.cn/tools/pub/publishing) ，例如：`README.md` 和 `CHANGELOG.md` 文件。更多关于如何组织 Package 目录的内容，参见 [Pub Package 布局约定](https://dart.cn/tools/pub/package-layout)。

## 为 Library 制作文档

使用 [dartdoc][] 可以为 Library 生成 API 文档。 dartdoc 解析源文件去查找使用 `///` 语法标注的 [文档注释](https://dart.cn/guides/language/effective-dart/documentation#doc-comments)：

```dart
/// The event handler responsible for updating the badge in the UI.
void updateBadge() {
  ...
}
```

文档生成示例，参见 [shelf 文档](https://pub.flutter-io.cn/documentation/shelf/latest)。

 **备注:**

在生成的文档中要包含任何 Library-Level 的文档，必须要指定 `library` 命令。参见 [issue 1082](https://github.com/dart-lang/dartdoc/issues/1082)。

## 分发开源 Library

如果 Library 是开源的，我们建议将他共享到 [Pub 网站](https://pub.flutter-io.cn/)。使用 [pub publish](https://dart.cn/tools/pub/cmd/pub-lish) 来发布或者更新 Library，该命令将会上传 Package 并创建或更新其页面。示例参见 [shelf Package](https://pub.flutter-io.cn/packages/shelf) 页面。有关如何准备发布 Package 的详细内容，参见 [发布 Package](https://dart.cn/tools/pub/publishing)。

Pub.dev 网站不仅仅是 Dart Packages 的发布网站， Pub 网站不仅用于托管 Package ，还能够生成托管 Package 的 API 参考文档。最新生成的文档的链接位于 Package 的 **About** 选项卡中; 示例参见 shelf Package 的 [API 文档](https://pub.flutter-io.cn/documentation/shelf)。链接到以前版本的文档，位于 Package 页面的 **Versions** 选项卡中。

为了确保 Package 的 API 文档在 Pub 网站上看起来更美观，请遵循以下步骤：

- 在发布 Package 前，请通过执行 [`dart doc`](https://dart.cn/tools/dart-doc) 工具确保文档能够生成成功且符合预期。
- 在发布 Package 后，请检查 **Versions** 选项卡，确保文档生成成功。
- 如果文档没有生成，点击 **Versions** 选项卡中的 **failed** 查看 dartdoc 的输出。

## 资源

通过运用以下资源来了解学习更多关于 Library Package 的内容：

- [Libraries 和可见性](https://dart.cn/guides/language/language-tour#libraries-and-visibility) 在 [语言概览](https://dart.cn/guides/language/language-tour) 中涵盖了 Library 文件使用的内容。
- [Package](https://dart.cn/guides/packages) 文档非常有用，尤其是 [Package 布局约定](https://dart.cn/tools/pub/package-layout).
- [什么不应该被提交](https://dart.cn/guides/libraries/private-files)包含了关于什么文件不应该被提交到源码仓库的介绍。
- [dart-lang](https://github.com/dart-lang) 组织下的最新 Library Package 常常是最佳实践的提现。可以参考学些以下这些实例： [dart_style](https://github.com/dart-lang/dart_style)， [path](https://github.com/dart-lang/path)， [shelf](https://github.com/dart-lang/shelf)， [source_gen](https://github.com/dart-lang/source_gen) 以及 [test](https://github.com/dart-lang/test) 。