import pandas as pd
import argparse

#Define command line arguments
parser = argparse.ArgumentParser(description='dta to csv')
parser.add_argument("-i", "--input", dest="input_file", required=True, help="dta file input")
parser.add_argument("-o", "--output", dest="output_file", required=True, help="csv file output")

#parse command line arguments
args = parser.parse_args()



data = pd.io.stata.read_stata(args.input_file)
data.to_csv(args.output_file)

print("Completed")