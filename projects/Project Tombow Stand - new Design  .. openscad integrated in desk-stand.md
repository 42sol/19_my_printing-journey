- Project in [[2022-12]]
   - good but functionally not so good print with lego base plate (in openscad) 
   - quick print from [Thingiverse ID: 3460117 ](https://www.thingiverse.com/thing:3460117/files)
	  ```bash
TomBow_Stand_v2.stl
	  ``` 
	![[model.thingiverse.tombow.reference.png]]

### First Idea ... 
- get the negative of a 3rd compartment 65mm
- intersect it with the stl from tombow stand
- combine it with a 65mm compartment
- remove the front with a cube 
```tombow_feelgood_remix_v1.scad```
issues:
- based on [Thingiverse ID: 3460117 ](https://www.thingiverse.com/thing:3460117/files)
- top of tombow stand is to small and will generate small openings
   > solve this by packing it in a cylinder first and replace 
   
   
```tombow_feelgood_remix_v2.scad```
- uses: tombow_cutout loosly based on another design
issues:
- 