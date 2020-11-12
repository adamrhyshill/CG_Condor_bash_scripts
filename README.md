# CG_Condor_bash_scripts
Bash scripts from CG tutorial videos for use with Condor or Bash terminals


Use the combinations_test_2 script in a directory once you've created your template files (e.g. the input.txt, addinput.txt, net.txt and x_facets_found.txt files you want to copy to all simulations). 
Edit the script according to what you require - number of simulations, starting values for energy 1 and 2, spacing for energy 1 and 2... or add an additional loop to run the combinations of 3 or 4 parameters - just be mindful of how many simulation folders this will generate.
Check that the find and replace commands are searching for the terms you are using in your template files, or adjust this accordingly - this script is not general, just meant to be a starting point for your own needs.

Use the grep script after running your simulations in colour mode to strip out all the length data from your simulations.
This will need to look in your simulation_parameters.txt file for the phrase "nm" as in nanometre - but this can again be adjusted.
The data will then be formatted for the aspect ratio calculator program (contained in another Git Repository).
