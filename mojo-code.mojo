
from PythonInterface import Python

Python.add_to_path(".")
let mypython = Python.import_module("mypython")

let c = mypython.my_algorithm(2, 3)
print(c)
