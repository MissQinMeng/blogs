# 自动部署脚本  
set -e
# 构建项目
npm run build
# 进入到构建输出目录
cd docs/.vuepress/dist
git init
git add -A
git commit -m 'deploy'
# push到新建仓库的 master 分支
git push -f git@github.com:MissQinMeng/MissQinMeng.github.io.git master
