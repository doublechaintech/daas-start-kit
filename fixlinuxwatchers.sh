# !/bin/bash
echo "Fixing file watchers issues needs sudo privilege - 修复文件监控需要超级用户权限"
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
