本項目基於[dezoomify-rs](https://lovasoa.github.io/dezoomify-rs/) master 2024/11/18修改，只略作更改。

修改後的deepzoom 支持json格式：
```
{
    "Image": {
    "xmlns":    "http://schemas.microsoft.com/deepzoom/2009",
    "Url":      "[URL]",
    "Format":   "jpg",
    "Overlap":  "1", 
	"MaxLevel": "0",
	"Separator": "/",
        "TileSize": "256",
        "Size": {
            "Height": "1805",
            "Width":  "1487"
        }
    }
}
```

新增`Separator|MaxLevel`項，用於處理變異版deepzoom。如：四川、雲南、江蘇等古籍數字化平臺。
