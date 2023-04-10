# The Brick Bakery: LEGO Gear Meshings.
source: https://sjbaker.org/steve/lego/index.html

Because of the peculiar 6:5 ratio between the vertical and horizontal dimensions of the axle holes in most LEGO parts, it can be quite tricky to find combinations of gear wheels that will mesh correctly, have the desired gear ratio and fit with where the various motors and wheels need to be.

I wrote a little computer program to test all possible gear wheel combinations against all possible horizontal and vertical hole separations.

Gears seem to bind hopelessly when they are scrunched together too tightly and they can skip or lock up solidly if they are too loose. My experiments show that these bad things happen when there is one tenth of a stud difference from the "ideal" spacing (either too tight or too loose).

Knowing that, I produced these three tables. They shows all possible combinations of horizontal and vertical placements of gear wheels that produce less than that critical 0.1 stud error. The first table shows all the perfect combinations where the gears are meshed as LEGO geometry intended. The second table shows combinations where the gears are a little too far apart, the third shows when they are a little tight.

If you have a choice, you should (obviously) pick the 'perfect' combinations in the first table. The combinations in the second and third tables are better at the top of the table and worse at the bottom. You'd have to be pretty desperate to want to use combinations from the bottom of those tables.

The 'horizontal' distances are measured in 'studs' - the 'vertical' distances are in 1/3rd height 'plates'.

### Exact Gear Meshings

**Error**

**Horizontal**

**Vertical**

**Gear Combo**

**(studs)**

**(studs)**

**(plates)**

0.0000

0

10

40t x 24t

0.0000

0

5

16t x 16t

0.0000

0

5

24t x 8t

0.0000

1.5

0

16t x 8t

0.0000

1.5

5

24t x 16t

0.0000

1

0

8t x 8t

0.0000

2.5

0

24t x 16t

0.0000

2

0

16t x 16t

0.0000

2

0

24t x 8t

0.0000

3.5

0

40t x 16t

0.0000

3

0

24t x 24t

0.0000

3

0

40t x 8t

0.0000

3

10

40t x 40t

0.0000

4

0

40t x 24t

0.0000

5

0

40t x 40t

### Loose Gear Meshings

**Error**

**Horizontal**

**Vertical**

**Gear Combo**

**(studs)**

**(studs)**

**(plates)**

0.0160

5

1

40t x 40t

0.0200

4

1

40t x 24t

0.0210

3.5

9

40t x 40t

0.0228

3.5

1

40t x 16t

0.0265

3

1

24t x 24t

0.0265

3

1

40t x 8t

0.0289

1.5

12

40t x 40t

0.0311

0.5

10

40t x 24t

0.0311

3.5

5

40t x 24t

0.0318

2.5

1

24t x 16t

0.0341

1.5

8

40t x 16t

0.0396

2

1

16t x 16t

0.0396

2

1

24t x 8t

0.0524

1.5

1

16t x 8t

0.0606

2.5

11

40t x 40t

0.0608

2.5

8

40t x 24t

0.0612

2

4

24t x 16t

0.0616

0.5

5

16t x 16t

0.0616

0.5

5

24t x 8t

0.0620

1

3

16t x 8t

0.0636

5

2

40t x 40t

0.0770

1

1

8t x 8t

0.0792

4

2

40t x 24t

0.0903

3.5

2

40t x 16t

0.1000

0

9

40t x 16t

0.1000

4.5

6

40t x 40t

### Tight Gear Meshings

**Error**

**Horizontal**

**Vertical**

**Gear Combo**

**(studs)**

**(studs)**

**(plates)**

0.0268

1

7

24t x 24t

0.0268

1

7

40t x 8t

0.0318

2.5

4

24t x 24t

0.0318

2.5

4

40t x 8t

0.0345

2.5

6

40t x 16t

0.0485

0.5

6

24t x 16t

0.0566

0.5

2

8t x 8t

0.0591

2

7

40t x 16t

0.0756

4.5

5

40t x 40t

0.0791

1.5

3

16t x 16t

0.0791

1.5

3

24t x 8t

0.0969

1

12

40t x 40t

0.1000

0

6

24t x 16t

0.1000

3

4

40t x 16t

---

For those who care, the C++ program that generated these tables is:

#include <stdio.h>

struct GearWheel
{
  float radius ;   /* in 'studs' */
  int   num_teeth ;
} ;

struct GearWheel gear [] = { {0.5,8}, {1.0,16}, {1.5,24}, {2.5,40}, {0,0} } ;


int main ()
{
  /*
    Try every combination of gears against every reasonable
    horizontal and vertical spacing.
  */

  for ( int w1 = 0 ; gear [ w1 ] . num_teeth > 0 ; w1++ )
    for ( int w2 = 0 ; gear [ w2 ] . num_teeth > 0 ; w2++ )
      for ( int v = 0 ; v < 15 ; v++ )  /* Vertical distance in plates */
        for ( int h = 0 ; h < 12 ; h++ )  /* Horizontal dist in half-studs */
        {
          /* Convert everything into 'studs' */

          float dv = (float) v * 6.0f / 15.0f ;
          float dh = (float) h / 2.0f ;

          float dd = sqrt ( dv * dv + dh * dh ) ;

          if ( fabs ( dd - ( gear[w1].radius + gear[w2].radius ) ) <= 0.1f )
          {
            if ( w1 > w2 )
              printf (
          "<tr><td><center>%-1.4f</center></td><td><center>%g</center></td><td><center>%d</center></td><td><center>%dt x %dt</center></td></tr>\n",
                   dd - ( gear[w1].radius + gear[w2].radius ),
                   (float)h/2.0f, v, gear[w1].num_teeth, gear[w2].num_teeth ) ;
            else
              printf (
          "<tr><td><center>%-1.4f</center></td><td><center>%g</center></td><td><center>%d</center></td><td><center>%dt x %dt</center></td></tr>\n",
                   dd - ( gear[w1].radius + gear[w2].radius ),
                   (float)h/2.0f, v, gear[w2].num_teeth, gear[w1].num_teeth ) ;
          }
        }

  return 0 ;
}

I ran it under Linux like this:

   meash | sort | uniq > tables

...and hand-edited the result into this file.

---

[**RETURN TO TOP**](https://sjbaker.org/steve/lego/index.html)  
[Steve Baker <steve@sjbaker.org>](mailto:steve@sjbaker.org)