# UIButton-XibLinesText
自动转换UIButton在Xib设置Title时输入的换行符

![image](https://raw.githubusercontent.com/vilyever/UIButton-XibLinesText/master/screenshots1.png)
![image](https://raw.githubusercontent.com/vilyever/UIButton-XibLinesText/master/screenshots2.png)

## Import
[CocoaPods](http://cocoapods.org)

`pod 'UIButton-XibLinesText', '~> 1.0.0'`

## Usage
若只设置了Normal状态直接import即可
```objective-c

#import "UIButton+VDXibLinesText.h"

```

若有其它状态需手动设置，因为无法判断哪些状态的Title有设值，默认其它状态的Title为nil会返回Normal状态的Title
```objective-c

#import "UIButton+VDXibLinesText.h"

self.testButton.vd_xibLinesTextState = UIControlStateHighlighted | UIControlStateSelected;

```
## License

[MIT license](LICENSE)
