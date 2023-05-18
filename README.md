# [Mojo-Python-integration](https://docs.modular.com/mojo/programming-manual.html#python-integration)

## Importing Python modules

`mojo-code.mojo`

    from PythonInterface import Python

    # This is equivalent to Python's `import numpy as np`
    let np = Python.import_module("numpy")

    # Now use numpy as if writing in Python
    a = np.array([1, 2, 3])
    print(a)

## Importing local Python modules

For example, suppose you have a Python file like this:

`mypython.py`

    import numpy as np

    def my_algorithm(a, b):
        array_a = np.random.rand(a, a)
        return array_a + b

Here’s how you can import it and use it in Mojo:

`mojo-code.mojo`
    
    from PythonInterface import Python

    Python.add_to_path("path/to/module")
    let mypython = Python.import_module("mypython")

    let c = mypython.my_algorithm(2, 3)
    print(c)
