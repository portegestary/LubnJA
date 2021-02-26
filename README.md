# LubnJA
Assignment for Lubn Job Application 

## Files
- unzip.py

## Environment
Python 2.7

## Spec
執行以下可以將 list_path 路徑的 list.txt 的清單內檔案逐一解壓縮至 target_path 下，如果 target_path 不填則會在 unzip.py 同一層位址建立 unzipped 資料夾，並會將解壓縮檔案放置在該位址下
```
python unzip.py [list_path] [target_path]

```

e.g.
```
python unzip.py list.txt 
```

當沒有 unzipped 資料夾存在會在 console 印出 Specified target_path not exists!