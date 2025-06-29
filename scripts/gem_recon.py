import pandas as pd
import numpy as np
import os

'''
Use carveme to reconstract GEMs for MAGs from A and B samples.
'''

Aclass = pd.read_csv('../data/metagenome/A_species.csv');
Bclass = pd.read_csv('../data/metagenome/B_species.csv');

def build_gem(fasta_path, universe, output_path):
    cmd = 'carve '+fasta_path+' --gapfill LB[-O2] --init LB --fbc2 -u '+ universe
    cmd += ' -o ' + output_path
    os.system(cmd)
    return None

for i in range(len(Aclass.index)):
    if int(list(Aclass['gramneg'])[i]) == 1:
        universe = 'gramneg'
    else:
        universe = 'grampos'
    bin_id = list(Aclass['bin_id'])[i]
    fasta_path = '../data/MAGs/A_'+bin_id+'.faa'
    output_path = '../data/A_GEMs/A_'+bin_id+'.xml'
    build_gem(fasta_path, universe, output_path)
    
print('A gems recon completed.')

for i in range(len(Bclass.index)):
    if int(list(Bclass['gramneg'])[i]) == 1:
        universe = 'gramneg'
    else:
        universe = 'grampos'
    bin_id = list(Bclass['bin_id'])[i]
    fasta_path = '../data/MAGs/B_'+bin_id+'.faa'
    output_path = '../data/B_GEMs/B_'+bin_id+'.xml'
    build_gem(fasta_path, universe, output_path)
    
print('B gems recon completed.')
