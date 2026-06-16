# library_flutter_animatedcategory

A modern, lightweight, and highly customizable Flutter category selector package with smooth animations, generic model support, custom icons, custom colors, and beautiful horizontal category navigation.

## When To Use

* **E-commerce Applications**: Product category filtering.
* **News Applications**: Browse articles by category.
* **Food Delivery Apps**: Filter restaurants and cuisines.
* **Learning Platforms**: Course and subject categories.
* **AI Applications**: Prompt and tool categorization.
* **Content Platforms**: Organize content collections.
* **Dashboard Applications**: Navigation between sections.

## Perfect For

* **E-commerce Apps**
* **News Applications**
* **Learning Platforms**
* **AI Tools**
* **Content Browsers**
* **Dashboard Navigation**
* **Category Filtering Systems**

## Features

| Feature                         | Status    |
| ------------------------------- | --------- |
| ✅ Smooth Selection Animation    | Supported |
| ✅ Generic Model Support (`<T>`) | Supported |
| ✅ Custom Icons                  | Supported |
| ✅ Custom Colors                 | Supported |
| ✅ Horizontal Scrolling          | Supported |
| ✅ Animated Scale Effect         | Supported |
| ✅ Animated Text Styling         | Supported |
| ✅ Haptic Feedback               | Supported |
| ✅ Light Theme Support           | Supported |
| ✅ Dark Theme Support            | Supported |
| ✅ Responsive Design             | Supported |
| ✅ Material 3 Compatible         | Supported |
| ✅ Null Safe                     | Supported |
| ✅ Lightweight                   | Supported |

## Parameters

| Parameter          | Type                 | Description                    |
| ------------------ | -------------------- | ------------------------------ |
| categories         | List<T>              | List of category items         |
| selectedCategoryId | String?              | Currently selected category ID |
| onCategorySelected | ValueChanged<String> | Category selection callback    |
| idBuilder          | String Function(T)   | Extract category ID            |
| titleBuilder       | String Function(T)   | Extract category title         |
| iconBuilder        | IconData Function(T) | Extract category icon          |
| colorBuilder       | Color Function(T)    | Extract category color         |

## Installation

Add this to your package's `pubspec.yaml`:

```yaml
dependencies:
  library_flutter_animatedcategory: latest_version
```

OR

```yaml
dependencies:
  library_flutter_animatedcategory:
    git:
      url: https://github.com/Excelsior-Technologies-Community/library_flutter_animatedCategory.git
```

Or run:

```bash
flutter pub add library_flutter_animatedcategory
```

## Import

```dart
import 'package:library_flutter_animatedcategory/animated_category_section.dart';
```

## Create Your Own Model

```dart
class CategoryData {
  final String id;
  final String name;
  final IconData icon;
  final Color color;

  const CategoryData({
    required this.id,
    required this.name,
    required this.icon,
    required this.color,
  });
}
```

## Usage Example

```dart
final categories = [
  CategoryData(
    id: '1',
    name: 'Technology',
    icon: Icons.computer,
    color: Colors.blue,
  ),
  CategoryData(
    id: '2',
    name: 'Books',
    icon: Icons.menu_book,
    color: Colors.orange,
  ),
];
```

```dart
AnimatedCategorySection<CategoryData>(
  categories: categories,
  selectedCategoryId: selectedId,
  onCategorySelected: (id) {
    setState(() {
      selectedId = id;
    });
  },
  idBuilder: (c) => c.id,
  titleBuilder: (c) => c.name,
  iconBuilder: (c) => c.icon,
  colorBuilder: (c) => c.color,
)
```

## Why Generic Models?

This package does not force users to use a predefined CategoryModel.

You can use:

* ProductCategory
* BookCategory
* NewsCategory
* PromptCategory
* Any custom class

Simply provide builder callbacks and the package will handle the UI and animations.

## Animation Effects

* Animated Scale on Selection
* Animated Color Transition
* Animated Text Styling
* Smooth Container Animation
* Haptic Feedback
* Animated Shadow Effects

## Demo

### Selected Category

```text
📱 Technology
📚 Books
🎮 Gaming
🤖 AI Tools
```

### After Selection

```text
📱 Technology
📚 Books
🎮 Gaming
🤖 AI Tools ✓
```

## License

MIT License

Copyright (c) 2026 Excelsior Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
 