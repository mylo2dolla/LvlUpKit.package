LvlUpKit
A powerful, modular Swift Package with a full toolkit for dynamic UI, gestures, actions, themes, haptics, clipboard syncing, and more — designed for fast iteration and easy integration into your SwiftUI projects.

Table of Contents
About

File Structure

Modules Overview

Installation

Basic Usage

Example Code Snippets

Contributing

License

About
LvlUpKit is your one-stop package for dynamic floating assistant UI components, gesture engines, clipboard syncing, haptic feedback, and a slick Deadpool-inspired dark-red theme. Everything is modular and designed for maximum effort, letting you pick and choose features without bloat.

File Structure
css
Copy code
LvlUpKit.package/
├── Package.swift
├── README.md
├── Sources/
│   ├── LvlUpKit/                     # Main umbrella module
│   │   ├── Theme/
│   │   │   ├── BrickTheme.swift
│   │   │   ├── BrickThemeManager.swift
│   │   │   └── MyCustomTheme.swift
│   │   ├── HUD/
│   │   │   ├── BrickHUDButton.swift
│   │   │   ├── HUDActionManager.swift
│   │   │   └── HUDButtonStyles.swift
│   │   ├── GestureEngine/
│   │   │   ├── GestureEngine.swift
│   │   │   ├── GestureCombo.swift
│   │   │   └── GestureRecognizer.swift
│   │   ├── Haptics/
│   │   │   └── HapticEngine.swift
│   │   ├── Clipboard/
│   │   │   ├── ClipboardManager.swift
│   │   │   └── ClipboardSync.swift
│   │   ├── Canvas/
│   │   │   ├── CanvasPanel.swift
│   │   │   ├── CanvasSyncManager.swift
│   │   │   └── PencilInputOverlay.swift
│   │   ├── FloatingAssistant/
│   │   │   ├── FloatingWheel.swift
│   │   │   ├── FloatingPanels.swift
│   │   │   └── PanelManager.swift
│   │   └── Utilities/
│   │       └── Extensions.swift
├── Tests/
│   └── LvlUpKitTests/
│       └── ... (unit and integration tests)
Modules Overview
Theme
BrickTheme & BrickThemeManager — centralized theme definition and state management

MyCustomTheme — pre-built themes including Deadpool-inspired dark red & black

HUD (Heads-Up Display)
BrickHUDButton — dynamic, glowing circular buttons with reactive states

HUDActionManager — routes button taps & long-press actions

Styles for buttons supporting glow, border, shadow, and animations

GestureEngine
Recognizes complex gesture combos

Supports alternate and long-press triggers

Extensible for custom gestures

Haptics
HapticEngine — centralized haptic feedback integration

Supports multiple feedback styles and intensities

Clipboard
Manages clipboard content

Syncs clipboard data across devices

Canvas
Drawing input overlay for Pencil and touch input

Live syncing for cross-device sketching

Panel UI for canvas controls

FloatingAssistant
Floating wheel and panels for action selection

Supports swipe navigation and customizable layouts

Panel persistence and load/save profiles

Installation
Use Xcode:

File > Add Packages...

Enter local path or repo URL for LvlUpKit.package

Choose the version or branch (usually main)

Add package to your project target

Basic Usage
Import the umbrella or specific modules in your SwiftUI files:

swift
Copy code
import LvlUpKit
import LvlUpKit.HUD
import LvlUpKit.Canvas
Use theme manager globally:

swift
Copy code
@ObservedObject var themeManager = BrickThemeManager.shared
Example Code Snippets
BrickHUDButton
swift
Copy code
BrickHUDButton(
    action: { print("Tapped!") },
    isActive: $isButtonActive
)
.frame(width: 64, height: 64)
FloatingWheel
swift
Copy code
FloatingWheel()
    .frame(width: 300, height: 300)
CanvasPanel with Pencil Input Overlay
swift
Copy code
CanvasPanel()
    .overlay(PencilInputOverlay())
    .frame(maxWidth: .infinity, maxHeight: .infinity)
Contributing
Pull requests welcome! Please keep changes modular and document new features. Unit tests are encouraged for all new code.

License
MIT License — free to use and modify with attribution.

