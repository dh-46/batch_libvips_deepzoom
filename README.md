# Batch_使用 libvips 批次產製圖磚

## 檔案結構

- `input`: 要轉成圖磚的圖片檔。
- `libvips`: libvips 主程式，目前版本為 8.12.2
    - 如需更新版本，請至 [Github](https://github.com/libvips/build-win64-mxe) 下載 zip 檔後解壓縮至此資料夾。
- `run_deep_zoom_only.bat`: 原圖切磚批次檔。
- `run_resize_and_deep_zoom.bat`: 原圖放大 2 倍再裁切批次檔。

## 使用說明

### 原圖切磚

1. 將要轉成圖磚的檔案放到 `input` 資料夾中。
2. 執行 `run_deep_zoom_only.bat`。
3. 產完的圖磚會存放在 `output` 資料夾，並以圖片檔案名稱作為資料夾名稱。

### 原圖放大 2 倍，再將圖片切割成圖磚。

將要轉成圖磚的檔案放到 `input` 資料夾中。
2. 執行 `run_resize_and_deep_zoom.bat`。
3. 產完的圖磚會存放在 `output` 資料夾，並以圖片檔案名稱作為資料夾名稱。

## libvips 指令說明

### 切割圖磚

```
vips dzsave {原始圖片} {輸出資料夾} --layout google --suffix .webp --background "0 0 0" --tile-size 512
```

- `--layout google`: Google 圖磚格式。
- `--suffix .webp`: 輸出圖磚使用 webp。
- `--background "0 0 0"`: 圖磚空白處背景黑色。(RGB，使用空格分隔)
  - 如果原始圖片有支援 ALPHA 值，背景色參數下 RGBA 才會有用。(BTW 另有方法可以將原始圖片補上 ALPHA 值)
- `--tile-size 512`: 圖磚設定長寬 512 * 512。

### 圖片縮放

```
vips resize {原始圖片} {輸出檔案完整路徑} {縮放倍數}
```

> 其他參考資料整理在 [libvips 大圖圖磚產製筆記](https://hackmd.io/@dh46tw/HyIhCh3xt)