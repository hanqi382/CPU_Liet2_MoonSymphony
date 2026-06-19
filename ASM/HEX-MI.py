#!/usr/bin/env python3
# -*- coding: utf-8 -*-

def hex_to_mi(hex_file_path, mi_file_path, depth=256, data_width=32):
    """
    将hex文件转换为Gowin MI内存初始化文件格式（大端序）

    参数:
        hex_file_path: 输入hex文件路径
        mi_file_path: 输出mi文件路径
        depth: 内存深度（默认256，与修改后的DP RAM匹配）
        data_width: 数据宽度（默认32位）
    """
    # 读取hex文件内容
    with open(hex_file_path, 'rb') as f:
        hex_data = f.read()

    # 准备输出数据
    output_lines = []

    # 添加头部信息
    output_lines.append(f"#File_format=Hex")
    output_lines.append(f"#Address_depth={depth}")
    output_lines.append(f"#Data_width={data_width}")

    # 将二进制数据转换为32位十六进制格式（大端序/原始顺序）
    # 每次读取4字节，不足4字节用0补齐
    for i in range(0, depth * 4, 4):
        # 读取4字节数据
        chunk = hex_data[i:i+4]

        # 如果数据不足4字节，用0补齐
        if len(chunk) < 4:
            chunk = chunk + b'\x00' * (4 - len(chunk))

        # 大端序输出：直接按字节顺序输出，不进行小端序转换
        # 例如：字节 [0x34, 0x20, 0x00, 0x04] -> 0x34200004
        hex_str = ''.join(f"{byte:02X}" for byte in chunk)
        output_lines.append(hex_str)

    # 写入mi文件
    with open(mi_file_path, 'w') as f:
        f.write('\n'.join(output_lines))

    print(f"转换完成！")
    print(f"输入文件: {hex_file_path}")
    print(f"输出文件: {mi_file_path}")
    print(f"内存深度: {depth}")
    print(f"数据宽度: {data_width}位")
    print(f"生成行数: {len(output_lines)}")
    print("\n前10行数据:")
    for i, line in enumerate(output_lines[:13]):
        if i > 0:
            print(f"  [{i-1}] {line}")

if __name__ == '__main__':
    import sys

    if len(sys.argv) >= 3:
        hex_file = sys.argv[1]
        mi_file = sys.argv[2]
        depth = int(sys.argv[3]) if len(sys.argv) >= 4 else 256
    else:
        # 默认参数
        hex_file = 'text.hex'
        mi_file = '../CPU_Liet2/src/Project.mi'
        depth = 256

    hex_to_mi(hex_file, mi_file, depth)