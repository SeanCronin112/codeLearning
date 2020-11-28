#Video: https://www.youtube.com/watch?v=ZzhlBaV7888&ab_channel=R3ap3rPy

import argparse

parser = argparse.ArgumentParser(description = "This is a demo for the argparse module!")
parser.add_argument('--tobesummed', metavar = "INTLIST", type=int, nargs = "+", help = "The list of integers!")
arguments = parser.parse_args()

if arguments.tobesummed:
    print("The sum of the list is: {}".format(sum(arguments.tobesummed)))

else:
    parser.print_help()