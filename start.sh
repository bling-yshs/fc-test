#!/usr/bin/env bash
# 安装依赖到本地
pip install -r requirements.txt

# 设置库路径
export PYTHONPATH=/code/.python_packages:$PYTHONPATH

# 启动 HTTP 服务，监听 0.0.0.0:9000（FC 默认 CAPort）
exec uvicorn api:app --host 0.0.0.0 --port 9000
