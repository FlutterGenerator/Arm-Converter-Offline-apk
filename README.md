# Arm-Converter-Offline-apk  
### #ArmConverter

**Arm Converter Offline** is an Android tool designed to **convert HEX ⇄ ARM** instructions.  
Supports **all ABIs (arm64, armv7, x86, x86_64)** and works **completely offline**.

---

## How It Works

Arm Converter Offline uses native JNI logic and integrates two open-source engines:  

- [Capstone Engine](https://github.com/capstone-engine/capstone) – for disassembly (HEX → ARM)  
- [Keystone Engine](https://github.com/keystone-engine/keystone) – for assembly (ARM → HEX)  

Everything runs natively on Android — **no PC required**.

---

## Features

- Convert HEX → ARM and ARM → HEX  
- Supports all ABIs  
- Works offline  
- Built with JNI (C/C++ native layer)  
- Simple and lightweight Android UI  

---

## Requirements

- Android device  
- Basic assembly knowledge  
- Android 7.0+ recommended  

---

## Screenshots

| ARM TO HEX                    | HEX TO ARM                    |
|-------------------------------|-------------------------------|
| ![HEX TO ARM](images/ARM.png) | ![ARM TO HEX](images/HEX.png) |

---

# Capstone: 6.0.0-Alpha9
# Keystone: 0.9.2
# NDK: 23.1.7779620
# Android Platform: android-19
# https://github.com/FlutterGenerator/keystone-capstone-android/releases/tag/keystone-capstone-android-28274132389
# Gradle 7.5-bin
# AGP 7.4.2
# Modded by tojik_proof_93 @FlutterGenerator

## 📜 License

This project is licensed under the [Apache License 2.0](LICENSE).  
You are free to use, modify, and distribute this software under the terms of the Apache License.

---

**Developed by [ANTIK_YT](https://github.com/aantik-mods)**  
> “Convert Patch Build All Offline
