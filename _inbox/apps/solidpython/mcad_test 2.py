
# https://solidpython.readthedocs.io/en/latest/#importing-openscad-code
# does not work. 

from solid import *

# MCAD is OpenSCAD's most common utility library: https://github.com/openscad/MCAD
# If it's installed for OpenSCAD (on MacOS, at: ``$HOME/Documents/OpenSCAD/libraries``)
mcad = import_scad('MCAD')

# MCAD contains about 15 separate packages, each included as its own namespace
print(dir(mcad)) # => ['bearing', 'bitmap', 'boxes', etc...]
mount = mcad.motors.stepper_motor_mount(nema_standard=17)
scad_render_to_file(mount, 'motor_mount_file.scad')