#!/bin/bash
app="$1"

# 查询窗口信息，若应用未启动则 window_info 为空
window_info=$(yabai -m query --windows | jq -r ".[] | select(.app == \"$app\") | \"\(.space) \(.id) \(.minimized // 0)\"" | head -n1)

if [ -z "$window_info" ]; then
  # 应用未启动，直接启动应用
  open -a "$app"
  exit 0
fi

# 提取信息并设置默认值
space_id=$(echo "$window_info" | awk '{print $1}')
window_id=$(echo "$window_info" | awk '{print $2}')
is_minimized=$(echo "$window_info" | awk '{print $3}' | tr -d '\n')  # 移除可能的换行符
is_minimized=${is_minimized:-0}  # 若空则默认 0

# 切换到目标 Space 并聚焦窗口
yabai -m space --focus "$space_id"

# 处理最小化窗口
if [ "$is_minimized" -eq 1 ]; then
  yabai -m window "$window_id" --deminimize
fi

yabai -m window --focus "$window_id"
