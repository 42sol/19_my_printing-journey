from solid import *   #!|md [docs](https://solidpython.readthedocs.io/en/latest/#using-solidpython)
from solid.utils import *  # Not required, but the utils module is useful

"""
include <constructive-compiled.scad>

TOUP() stack(TOUP) 
	box(side = 10)
	X(10) box(side = 20);
"""

solid = import_scad('solid',use_not_include=True)

constr = solid.constructive
add = constr.add
box = constr.box
stack = constr.stack
X = constr.X 
Y = constr.Y
Z = constr.Z 
toUp = constr.toUp
UP = constr.TOUP()
align = constr.align
a = constr.assemble()(add()(box(10)))
a = toUp()(stack(UP)(box(10)((X(10)((Y(5)(box(20))))))))
scad_render_to_file(a, 'out_file.scad')