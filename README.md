# macOS Hello Battery Monitor

[English](#english) | [中文](#chinese)

<a name="english"></a>
## English

A simple macOS application that displays a welcome message and monitors battery status. Built with Swift and Cocoa framework.

### Features
- Displays "Hello Tom" welcome message
- Real-time battery level monitoring
- Clean user interface
- Green theme background
- 500x500 pixel window size

### System Requirements
- macOS 10.10 or later
- Swift 5.0 or later

### Quick Start

#### Method 1: Direct Download
1. Download [HelloTom.dmg](releases/HelloTom.dmg)
2. Double click to open the DMG file
3. Drag HelloTom.app to Applications folder
4. Launch HelloTom from Launchpad or Applications folder

Note: First launch may require approval in "System Preferences > Security & Privacy"

#### Method 2: Build from Source
1. Clone or download the source code
2. Open Terminal and navigate to project directory
3. Run `swift build` to build the project
4. Run `swift run` to launch the application

---

<a name="chinese"></a>
## 中文

一个简单的 macOS 应用程序，显示欢迎信息并监控电池状态。使用 Swift 和 Cocoa 框架构建。

### 功能特点
- 显示 "Hello Tom" 欢迎信息
- 实时显示系统电池电量
- 简洁的用户界面
- 绿色主题背景
- 500x500 像素的窗口大小

### 系统要求
- macOS 10.10 或更高版本
- Swift 5.0 或更高版本

### 快速开始

#### 方法1：直接下载使用
1. 下载 [HelloTom.dmg](releases/HelloTom.dmg) 文件
2. 双击打开 DMG 文件
3. 将 HelloTom.app 拖到应用程序文件夹
4. 从启动台或应用程序文件夹启动 HelloTom

注意：首次运行可能需要在"系统偏好设置 > 安全性与隐私"中允许运行。

#### 方法2：从源码构建
1. 克隆或下载源码
2. 打开终端，导航到项目目录
3. 运行 `swift build` 构建项目
4. 运行 `swift run` 运行应用程序

### 技术细节 | Technical Details
- 使用 Cocoa 框架创建原生窗口和界面 | Native window and interface with Cocoa framework
- 使用 IOKit 框架获取系统电池信息 | System battery info using IOKit framework
- 纯 Swift 编写，不依赖 Interface Builder | Pure Swift, no Interface Builder dependency
- 使用 NSWindow 和 NSTextField 构建界面 | UI built with NSWindow and NSTextField

### 作者 | Author
- GitHub：[Your GitHub Profile]
- Email：[Your Email]
- Blog：[Your Blog]

### 许可证 | License
MIT License - 查看 [LICENSE](LICENSE) 文件了解详情 | See [LICENSE](LICENSE) file for details

### 贡献 | Contributing
欢迎提交 Issue 和 Pull Request！| Issues and Pull Requests are welcome!

### 更新日志 | Changelog
#### v1.0.0 (2024-03-xx)
- 初始版本发布 | Initial release
- 实现基本显示功能 | Basic display functionality
- 添加电池信息显示 | Battery information display

