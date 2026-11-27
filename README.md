# Actions-OpenWrt

基于 [P3TERX/Actions-OpenWrt](https://github.com/P3TERX/Actions-OpenWrt) 维护的 OpenWrt 固件自动化编译仓库，借助 [GitHub Actions](https://github.com/features/actions) 自动化构建，并将固件产物发布至 [Releases](https://github.com/markvlenvision/Actions-OpenWrt/releases)。

## 📁 目录结构

```text
Actions-OpenWrt/
├── .github/workflows/   # GitHub Actions 自动化编译工作流配置
├── openwrt_lede/        # LEDE / OpenWrt 源码与相关配置
├── openwrt_official/      # 自定义编译脚本与版本配置（如 v25.12.6 等构建配置）
├── LICENSE              # 开源协议（MIT License）
└── README.md            # 项目说明文档
```

## 📦 固件下载与使用

1. 前往本仓库的 [Releases](https://github.com/markvlenvision/Actions-OpenWrt/releases) 页面查看已构建版本（例如 `2026.11.12-2040` 等）。
2. 根据设备架构与启动方式选择对应的固件镜像或压缩包下载。
3. 刷机或升级前请务必提前备份现有路由器配置，并核对版本与组件说明。

## 🛠️ 自定义构建步骤

1. 点击 Use this template 或 Fork 本仓库到自己的 GitHub 账号。
2. 调整工作流参数、`openwrt-script` 中的脚本或 `.config` 配置（如目标架构、源码分支与软件包）。
3. 进入仓库 **Actions** 页面选择对应工作流，点击 **Run workflow** 开始编译。
4. 构建完成后，可在工作流运行详情的 **Artifacts** 或对应 **Releases** 中下载产物。

## ⚠️ 使用说明

- 云端完整编译耗时较长，请合理配置编译环境与源地址。
- 网络设备固件涉及底层路由与转发设置，请遵守相关法律法规，并在合法合规范围内使用。

## 🙏 致谢

- 模板来源：[P3TERX/Actions-OpenWrt](https://github.com/P3TERX/Actions-OpenWrt)
- 感谢 [OpenWrt](https://openwrt.org/)、Lean's OpenWrt 源码维护者、[GitHub Actions](https://github.com/features/actions) 及相关开源脚本项目。

## 📄 开源协议

本项目基于 [MIT License](https://github.com/markvlenvision/Actions-OpenWrt/blob/main/LICENSE) 开源。