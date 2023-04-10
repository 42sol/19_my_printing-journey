# Readme SolidPython

## TODO: generate this 

```scad
include <constructive-compiled.scad>


TOUP() stack(TOUP)
   box(side = 10)
   X(10) box(side = 20);
```

1) include instead of use (solution: export parameter)
2) relative path instead of absolut path (todo: look into code)
3) combine witih space and not with ( ) (solution: count children)
4) do not insert X for first parameter of X (do not name the first parameter) (solution: filter for special names)
5) do not new line between any object ... (TODO: check post processing on rendered_string=//)