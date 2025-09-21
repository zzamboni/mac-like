# Mac-like Plymouth boot theme

Plymouth theme that resembles the macOS boot screen, with a black background,
logo in the middle and progress bar near the bottom of the screen.

## Screenshots

Regular boot screen (showing Ubuntu logo from [BsxDarkFenceLight1](https://github.com/blackosx/BsxDarkFenceLight1)):

<img src="/home/diego/Personal/devel/plymouth-themes/mac-like/screenshot-boot.png" alt="screenshot-boot" style="zoom:50%;" />

Boot screen during updates:

<img src="/home/diego/Personal/devel/plymouth-themes/mac-like/screenshot-updates.png" alt="screenshot-updates" style="zoom:50%;" />

## How to use

- Clone this repo
- Copy the `mac-like` directory to `/usr/share/plymouth/themes`
- Update `header-image.png` with the logo you want to show during boot (the default is the Ubuntu logo shown above). For a Mac-like look I like the icons from  [BsxDarkFenceLight1](https://github.com/blackosx/BsxDarkFenceLight1), but you can use any PNG image. There are many other nice icon packs (covering most Linux distributions) at [https://github.com/blackosx](https://github.com/blackosx). **Note:** These icon package are in Apple ICNS format, you need to convert the files you want to use to PNG. I've had good luck with https://www.coolutils.com/online/ICNS-to-PNG. Included in this repo are the converted icons for Ubuntu and Pop!_OS.
- Register the new theme:
  ```
  sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/mac-like/mac-like.plymouth 100
  ```
- Choose the new theme as default (choose the appropriate number in the list that appears):
  ```
  sudo update-alternatives --config default.plymouth
  ```
- Regenerate initramfs:
  ```
  sudo update-initramfs -u
  ```
- Reboot and enjoy!

# Credits

- Sample icons from  [BsxDarkFenceLight1](https://github.com/blackosx/BsxDarkFenceLight1).
- Initial inspiration from https://github.com/fathyar/mac-plymouth.

