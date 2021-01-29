<h1><p style="text-align:center"> CSS Basic

## Css Selector

<p style= 'text-align: center;';><img src=''></p>

|Seletor|Description|
|-----------|-----------|
|.name1.name2|chọn tất cả các element có class là name1 hoặc name2 |
|name1 .name2|chọn tất cả các elements với class:"name2" có element cha với class:"name1"|
|div > p|Chọn các thẻ p có cha là thẻ div|
|:active||
|::after||
|::before||
|:hover||
#

## SCSS basic

<p style= 'text-align: center;';>Nested</p>

``` CSS
CSS
.hinh-vuong {
    width: 100px;
    height: 100px;
    background-color:  blue;
    box-shadow: 1px 1px 1px 1px #bf0000;
 }
 .hinh-vuong .mau-chu {
    size: 14px;
    text-align: center;
 }
 .hinh-vuong .mau-chu .dong-1 {
    color: #bf0000;
    text-align: left;
 }
```

``` SCSS
SCSS
.hinh-vuong {
    width: 100px;
    height: 100px;
    background-color: #b3b3b3;
    box-shadow: 1px 1px 1px 1px #bf0000;
    .mau-chu {
        size: 14px;
        text-align: center;
        .dong-1 {
            color: #bf0000;
            text-align: left;
        }
    }
}
```

``` SCSS
SCSS
.hinh-vuong {
    &.mau-chu { //.hinh-vuong.mau-chu
        size: 14px;
        text-align: center;
    }
}
```

<p style= 'text-align: center;';>Nested</p>

#