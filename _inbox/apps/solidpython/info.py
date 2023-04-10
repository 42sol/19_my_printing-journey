from solid import *   #!|md [docs](https://solidpython.readthedocs.io/en/latest/#using-solidpython)
from solid.utils import *  # Not required, but the utils module is useful

lego = import_scad('LEGO')
d = cube(20)  \
    - sphere(15) \
    - right(10)(sphere(15))

a = lego.LEGO.block(
        type="brick",
        roadway_invert=True,
        width=4,
        length=3,
        height=1/3,
        roadway_width=2,
        roadway_length=2,
        roadway_y=1,
        roadway_x=1,
            stud_type="hollow") \
                + left(10) (up(7) (back(7) (sphere(5)))) \
                + right(10) (up(7) (back(7) (sphere(5))))

scad_render_to_file(a, 'out_file.scad')