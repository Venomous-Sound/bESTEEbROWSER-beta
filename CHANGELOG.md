# Changelog

All notable changes to BesteeBrowser will be documented in this file.

## [1.0.0-beta.2] - 2025-01-20

### Added
- 🎨 Complete theme synchronization between all UI components
- 🎨 File browser now properly responds to theme changes
- 🎨 Enhanced theme properties for better visual consistency

### Fixed
- 🐛 Fixed file browser staying dark when custom themes were applied
- 🐛 Fixed theme synchronization between ThemeSelector and ThemeProvider
- 🐛 Improved theme persistence across app restarts

### Changed
- 🔧 Updated all 8 custom themes with file browser specific colors
- 🔧 Converted Browser sidebar to use styled-components
- 🔧 Added event-driven theme change notifications

## [1.0.0-beta.1] - 2025-01-19

### Added
- 🎉 Initial beta release
- 🌐 Multi-tab browser with GPU acceleration
- 💬 Discord integration
- 💬 Reddit OAuth authentication
- 🎵 Audio visualizers (Oscilloscope & Vectorscope)
- 🎨 8 custom themes + light/dark modes
- 📁 Built-in file browser with previews
- 🧩 Drag-and-drop module system
- 💾 Layout saving and loading
- 🔒 Secure API key storage

### Known Issues
- 📋 Some audio devices may not be detected
- 📋 Reddit OAuth sometimes requires retry
- 📋 Performance issues with 10,000+ files in file browser

---

## Version Guide

- **Major** (X.0.0): Breaking changes, major features
- **Minor** (0.X.0): New features, improvements
- **Patch** (0.0.X): Bug fixes, small improvements
- **Beta** (-beta.X): Pre-release testing versions