# ubuntu

以 `ubuntu 18.04` 为基础定制的镜像，预装了日常使用的一些软件

```bash
# 制作镜像
docker build -t lijinglin2019/ubuntu ubuntu

# 普通方式运行
docker run -it --rm lijinglin2019/ubuntu

# 进入 docker-for-mac 的 vm
docker run -it --rm --privileged --pid=host --net=host lijinglin2019/ubuntu
```
