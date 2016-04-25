#!/bin/bash
#---------------------------#
# functions.sh	            #
# 2013-09-19                #
# benefit@kantsu.fi         #
#---------------------------#
# Functions can be declared in any order!

function function_B {
	echo Function B is this.
}
function function_A {
	echo $1
}
function function_D {
	echo Function D.
}
function function_C {
	echo $1
}

# Pass parameter to function A
function_A "Function A."
function_B
# Pass parameter to function C
function_C "Function C."
function_D
