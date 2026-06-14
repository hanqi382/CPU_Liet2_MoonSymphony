# 5级流水线CPU (Pipeline CPU)

这是一个基于FPGA实现的教学型CPU项目他以Turing Comelete为原型，旨在展示处理器的基本架构原理。

## 项目概述

本项目正在实现一个5级流水线CPU，当前已完成部分基础模块复刻设计，流水线和扩展指令正在开发中。

## 当前架构特性

### 指令集架构 (ISA)
- 基于MIPS风格的精简指令集
- 支持R型、I型和J型指令格式
- 32个通用寄存器 (r0-r31)，其中r0恒为0

### 已实现模块
- **PC.v**: 程序计数器
- **CU.v**: 控制单元
- **ALU.v**: 算术逻辑单元
- **RegFile.v**: 寄存器文件
- **SYS_CLK.v**: 系统时钟管理
- **Gowin_DPB**: 双端口块RAM，用作指令存储器和数据存储器

### ALU功能
- 0: NAND (按位与非)
- 1: OR (按位或)
- 2: AND (按位与)
- 3: NOR (按位或非)
- 4: ADD (加法)
- 5: SUB (减法)
- 6: XOR (按位异或)
- 7: LSL (逻辑左移)
- 8: LSR (逻辑右移)
- 9: ASR (算术右移)
- 10: 比较操作

## 计划中的5级流水线架构

### 流水线阶段
- **IF (Instruction Fetch)**: 指令获取阶段
- **ID (Instruction Decode)**: 指令译码阶段
- **EX (Execute)**: 执行阶段
- **MEM (Memory Access)**: 内存访问阶段
- **WB (Write Back)**: 写回阶段

### 流水线特性
- 流水线寄存器设计 (IF/ID, ID/EX, EX/MEM, MEM/WB)
- 数据前递单元 (Data Forwarding Unit)
- 冒险检测与处理 (Hazard Detection)
- 分支预测与处理

## 模块组成

### 主要模块
- `CPU_Liet2_Top.v`: 顶层模块
- `PC.v`: 程序计数器
- `CU.v`: 控制单元
- `ALU.v`: 算术逻辑单元
- `RegFile.v`: 寄存器文件
- `SYS_CLK.v`: 系统时钟管理

### IP核
- `Gowin_DPB`: 双端口块RAM，用作指令存储器和数据存储器

## 设计特点

1. **教育导向**: 代码结构清晰，注释详尽，便于学习理解
2. **模块化设计**: 各功能模块独立实现，易于维护和扩展
3. **FPGA友好**: 针对Gowin FPGA架构优化设计

## 使用方法

### 环境要求
- Gowin IDE (推荐v1.9.11以上版本)
- GW2AR-LV18QN88C8/I7 FPGA开发板

### 编译步骤
1. 导入项目到Gowin IDE
2. 设置顶层模块为 `CPU_Liet2_Top`
3. 运行综合、布局布线
4. 生成编程文件并下载到FPGA

## 开源协议

本项目采用 MIT 许可证，详情请参见 LICENSE 文件。

## 项目状态

当前项目处于开发阶段，基础模块已完成，正在实现完整的5级流水线架构。

## 贡献指南

欢迎提交Issue和Pull Request来改进项目。对于重大变更，请先开Issue讨论变更内容。

## 致谢

感谢Gowin半导体提供的开发工具和FPGA器件支持。

## 联系方式

如有问题或建议，请通过Issue功能提出。
