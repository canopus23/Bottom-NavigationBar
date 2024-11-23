# BottomNavigationBarWidget
https://github.com/user-attachments/assets/fbe12148-ef18-49c8-ab41-59fb99888d6c

A modern and customizable **Flutter Bottom Navigation Bar** widget with smooth animations and stylish design.

## Features

- Customizable navigation bar with animated icons.
- Smooth transitions for active and inactive states using the `flutter_animate` package.
- Adaptive design with a beautiful rounded container and shadow effects.
- Interactive highlight indicators for active icons.

## Preview

Here’s a quick description of how the widget looks and works:

- **Highlight Indicator**: A circular dot appears beneath the active icon.
- **Icon Animation**: The active icon smoothly scales up and fades in, while inactive icons remain static.
- **Custom Styling**: Rounded container with shadow effects for a premium design.

## Usage

### Installation

Add the `flutter_animate` package to your `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_animate: ^4.1.0
```

### Parameters

- `selectedIndex`: An integer representing the currently selected tab index.
- `onItemTapped`: A callback triggered when a navigation item is tapped.

### Customization

You can easily modify the icons, colors, or styles by updating the `_buildNavIcon` and `Container` properties within the widget:

- **Change Icons**: Replace `Icons.home`, `Icons.bar_chart`, etc., with your desired icons.
- **Adjust Colors**: Customize `Colors.teal` and `Colors.grey` to suit your theme.
- **Modify Animation**: Tweak the animation duration and effects with the `flutter_animate` package.

## Contributing

Feel free to submit issues or create pull requests to enhance this widget.

⭐ **Star** this repository if you find it useful! 🚀
