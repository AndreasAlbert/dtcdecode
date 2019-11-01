# IT DTC decoding firmware

This repository contains VHDL firmware used to decode IT pixel data. 



## Row decoder testing instructions
The decoding algorithm for a single row is implemented in `rowdecode.vhd`.

Testing is done by running the decoder for each possible row input (all combinations of 8 bits, so 2^8 possible inputs). 
The simulation is run for a set amount of time and the outputs are recorded into a test file. A `tcl` script to handle
all of this is generated using `write_test_tcl.py`. The simulation can then be run by calling:


```bash
/path/to/bin/vivado -mode tcl dtcdecode.xpr  -source test.tcl
```

The outputs will be saved into a file called `test.txt`. 
To convert the outputs into a prettier table, use `pretty_result.py`.

