# Batch_使用 libvips 批次產製圖磚

## 檔案結構

- `input`: 要轉成圖磚的圖片檔。
- `libvips`: libvips 主程式，目前版本為 8.11.3
    - 如需更新版本，請至 [Github](https://github.com/libvips/build-win64-mxe) 下載 zip 檔後解壓縮至此資料夾。
- `run_deep_zoom.bat`: 批次檔。

## 使用說明

1. 將要轉成圖磚的檔案放到 `input` 資料夾中。
2. 執行 `run_deep_zoom.bat`。
3. 產完的圖磚會存放在 `output` 資料夾，並以圖片檔案名稱作為資料夾名稱。