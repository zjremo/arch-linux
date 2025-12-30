# audio_card

这里主要解决声卡问题，刚配好系统之后系统是没有声音的，需要自己进行配置来开启声音。

## 解决步骤

本人使用的设备是ThinkPad T14p。没有声音的核心问题就是内核加载的是最新的驱动`sof-audio-pci-intel-mtl`, `sof-audio-pci-intel-mtl`需要特定的固件才能使用。

```bash
# 1. install sof-firmware for sof-audio-pci-intel-mtl
sudo pacman -S sof-firmware

# 2. install PipeWire (现代 Arch 默认音频服务) 
sudo pacman -S pipewire pipewire-jack pipewire-pulse pipewire-alsa pipewire-zeroconf

# 3. start PipeWire modern Service
systemctl --user --now enable pipewire pipewire-pulse

# 4. check if auth device to be found 这个一般是需要reboot才可以发现设备出现
aplay -l
```
