## Lego Specifications

When building machines and robots with Lego, dimension specifications for the standard bricks are handy. This will help designing models, and interfacing Lego with other materials.

# Ratios

Brick Height to Stud Width: 6/5 Brick Height to Plate Height: 3/1

# Measurements

![](https://orionrobots.co.uk/galleries/lego-dimensions/lego-dimensions-thumb.jpg)

If you want to put Lego bricks into another cad system(ie ProEngineer/SolidWorks) - you will find the following helpful along with the formula table below:

Description

Short name

Size in mm

Spacing of stud centers

sSt

8

Diameter of studs

dSt

5

Height of block

hB

9.6 (48/5 mm )

Height of studs

hSt

1.7

Plate Height

hP

3.2mm (16/5 mm)

Thickness of brick walls

thB

1.5

Outer diameter of cylinders (found on underside of bricks)

odCyl

6.31

Thickness of cylinder walls

thCyl

0.657

When you are constraining and defining - you may find these formulae using the above symbols useful:

Symbol

Calculation to derive from others

hB

sSt * 6 / 5

thB

(sSt - dSt) / 2

hSt

hB / 3 - thB

odCyl

sqrt(2) * sSt - dSt

thCyl

(odCyl - dSt) / 2

## In details

Although studs are the standard unit of Lego measure- to interface with other systems, and for some more complex models, it is important to understand the dimensions. The goal is to represent brick heights and plate heights in millimeters. We will refer to gears using the number of teeth(ie 24t) - although the diameter of the holes, wheels and studs could also be of significance.

According to [Steve Baker](http://sjbaker.org/steve/lego/dimensions.html "The Brick Bakery:Lego Dimensions") the distance between 2 Studs is 8mm wide. This is verified as Stud pitch = 7.985 on Lugnet - although 8mm is commonly used.

Plate height(according to Lugnet) is 3.194 mm, although 3.2 mm or 16/5 mm are commonly used.

Brick height is 9.582 mm, and 9.6 mm or 48/5 mm are commonly used.

The ratio of the height of standard beams, to the width of studs is 5:6 - which can make for some trickiness when doing perpendicular mounts.

Calculating: 8:48/5 (take the 5 over) = 5_8:48 (factor 8 from 48) = 5_8:6*8 (canceling) = 5:6.

Plates(thin bricks) are 1/3 standard bricks.

Calculating: 16/5:48/5 == 16:48 == 1_16:3_16 = 1:3.

Therefore 5 plates thick is the width of 2 studs. In LDU (LDraw units), the measurements are: Brick height = 24 Plate height = 8 Stud pitch = 20

# Gears

In the Lego system, Technic gears have a ratio that the number of teeth are 8 times the diameter, or 16 times the radius in stud pitch. Conveniently - the number of studs, and Diameter in Millimeters seem to be the same.

Teeth

Diameter

 

 

Studs(by pitch)

Mm

8t

1

8

16t

2

16

24t

3

24

40t

5

40

More info on mounting these can be found at [The Brick Bakery](http://sjbaker.org/steve/lego/gearpairs.html "The Brick Bakery:Gear Mounting & Ratios").
[[Lego Gear Dimensons]]
# Materials

Most Lego bricks use high quality ABS plastic - which is slightly elastic.

Specific Gravity/Density

1.05 g/cm^3

Tensile Strength

44 MPa

Elongation At Break

23-25 %

# Other related specifications