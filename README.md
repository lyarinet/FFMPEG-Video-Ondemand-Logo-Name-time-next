[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

[![Linux](https://svgshare.com/i/Zhy.svg)](https://svgshare.com/i/Zhy.svg)

1) Gave it the permission 755 or 777 ~
2) Run the Script ./ Logo+Name+Timer.sh
3) Change the logo.png by your own logo with the same name "logo"


## **1** Logo Size
Search for ```cale2ref=w='iw*18/100``` then change ```18``` to any desired size from 
(```0.1``` till ```100```) you now control the Size
## **2** Logo Position

Search for ```w-(main w*0.08):y=main h*0.05```
then change 
```0.08``` and ```0.05``` to any desired number you now control the Position
## **3** Name & Timer & Next size
Search for ```fontsize=```
then change to any desired size
## 4 Name & Timer & Next Position & Color Search for:

```
Name=x=20:y=20
Timer=x=8:y=h-th-8
Next= x=w-tw-20:y=h-th-20
```

```Color=FontColor=``` {change it as you want write the name of color}

## Position Notice How to change:

- > Top left: ```x=0 : y=0``` (with 10 pixel padding ```x=l0 : y=lO```)
- > Top center: ```x= (w - text_ w) /2 : y=0``` (with 10 px padding ```x= (w - text_w) /2 : y=lO```)
- > Top right: ```x=w- tw : y=0``` (with l0 px padding: ```x=w-tw- 10 : y=lO```)
- > Cen~red: ```x= (w - text_w)/2 : y= (h - text_h)/2```
- > Bottom left: ```x=0 : y=h``` -th (with 10 px padding: ```x=l0 : y=h- th - 10```)
- > Bottom center: ```x= (w - text_w) /2 : y=h- th``` (with 10 px padding: ```x= (w - text_w) /2 : y=h- th - 10```)
- > Bottom right: ```x=w- tw : y=h- th``` (with 10 px padding: ```x=w- tw- 10 : y=h- th - 10```)
