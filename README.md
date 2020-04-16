# About

This repository hosts the codes of the synthetic gene drive project in collaboration with R. Guy Reeves and spearheaded by Prateek Verma. 

The model is part of the R&D project “Risk assessment of synthetic gene-drive applications” (FKZ 3518 84 0500) commissioned by the Federal Agency for Nature Conservation (BfN) with funds from the German Federal Ministry for the Environment, Nature Conservation and Nuclear Safety. The work also has been supported by funds of the Max Planck Society.
***

The project contains the codes pertaining to various figures in the submitted paper in the directory 
VGR_manuscript/

The literature database is available in the folder
literature_database

The main tool *DrMxR* is the file.

DrMxR.cdf

All the above files can be cloned or downloaded.


# Gene Drive

Gene drive is a natural phenomenon described in a variety of species including mice, flies and beetles (see [article](https://www.genetics.org/content/13/6/488.article-info)). Where it occurs the frequency of a driving gene in a natural population cannot be predicted solely from its Darwinian natural selection parameters, as can be for most other genes. Additional factors not generally considered in most population genetic models also need to be incorporated [PMC1213827](PMC1213827). This can make predicting the expected dynamics of gene drives very complicated, even for experts. 
Given the current interest in synthetic gene drive (ones engineered in labs) we wrote ``DrMxR`` (pronounced drive mixer) to provide an intuitive tool to learn about and evaluate the properties of a vast range of conceivable drive approaches.

## Synthetic gene drive

Synthetic gene drive has been proposed as a way to push genes into wild populations ([10.1093/oxfordjournals.bmb.a011690](https://doi.org/10.1093/oxfordjournals.bmb.a011690)). This occurs after individuals carrying the gene drive are released  in to wild populations or arrive from adjacent populations where the gene drive has already become established. Currently, no gene drive elements have been released into wild populations.

Despite there being a large number of proposed gene drive systems, they all have one of two distinct aims - 

- To drive a synthetic gene into a target wild population (without the aim of changing the population size). Such a gene could reduce the capacity of mosquitoes to spread diseases like malaria.

OR

- To drive a synthetic gene into a wild target population that has been engineered to reduce the size of the wild population (usually by making fertile females less frequent).


It is important to understand that gene drive works through mating and inheritance between generations and is in no way an infection like process. It can only work within populations of inter-fertile individuals, usually within the same species, or among inter-fertile species groups.

## DrMxR manual

For a more complete description of ``DrMxR`` please go to [A unifying approach to gene drive](linktopaper).


``DrMxR`` works on Mac Linux and Windows on computers, tablets or phones. 
Basically anything that you can install WOLFRAM PLAYER on.


### Downloading the cdf file

The actual DRMxR tool is the cdf file which can be downloaded from above.
Mathematica or the Wolfram Mathematica Player for Notebooks is required to run the tool.

### Downloading Wolfram Player for Notebooks

Wolfram Player for Notebooks is a free player from Wolfram and can be downloaded [here](https://www.wolfram.com/player/)

*Only if you want to use ``DrMxR`` on a mobile phone or tablet you will need to register for a free Wolfram Cloud account to “activate interactivity”*

The key to DrMxR is the triangle diagram and being able to interpret it (its correct name is a [de Finetti diagram](https://en.wikipedia.org/wiki/De_Finetti_diagram)). It is not as complicated as it first looks and provides an overview of what is likely to happen to a single population starting from all possible staring points if you wait enough generations.

The triangle represents all conceivable populations frequencies where you have a drive allele (D) and a corresponding wildtype allele (W).

As individuals have pair of chromosomes, then all individuals in a population must be one of three genotypes.

- WW 	wildtype homoyzgote
- WD 	drive heterozygote 
- DD 	drive homozygote

Consequently any population can be summarised by the frequency of each of the above three genotypes,
<!--![alt text](figure_toolbar.png)-->

<!--genotype  | Population A | Population B | Population C | Population D
--- | --- | --- | --- | ---
WW | 100% | 0% | 15% | 70%
WD | 0% | 0% | 50% | 0%
DD | 0% | 100% | 35% | 30%
 | all wildtype, wild population without any drive elements  | all drive homozygotes, gene drive has replaced any WW individuals that once existed  | A population where all three genotypes are present | A population that is a mix of wildtype and drive homozygotes, such as might occur immediately after the release or arrival of the latter.-->

### How to read the figure

**Interior of the triangle.** Each point on the triangle identifies the relative frequency of the three genotypes. The corners represent 100% of just one of the three genotypes. The interior represents mixtures of more than one of the three genotypes

<!--{no arrows no colour , genotypes on corners. mark populations A-D and }-->

**The arrows** you will see inside the triangle indicate the probable direction of population genotype frequency change over generations. So start at any location(s) in the triangle and follow the arrows to see where you probably end up

<!--- for example these in these three diagrams.
Triangle 1 regardless of what population frequency you start at the DD genotype will tend to increase and if you wait for enough generations all WD and WW genotypes will be eliminated - this can be thought of successful gene drive / population replacement
Triangle 2 regardless of what population frequency you start at the WW genotype will tend to increase and if you wait for enough generations all WD and DD genotypes will be eliminated - this can be thought of as a return to a wild population or drive reversal. 
Triangle 3 If you start from a point on the triangle where WW individuals are more frequent than DD individuals (the left side of the triangle) then WD and DD genotypes will be eliminated. However ,if you start from a point on the triangle where WW individuals are less frequent than DD individuals (the right side of the triangle) then WD and WW genotypes will be eliminated.
{no colour with arrows three triangles , 1, DD eq 2++ eq, 3 underdominant , genotypes on corners }-->

**The colours** you see inside the triangle indicate the relative speed of frequency change in the directions indicated by the arrows. We have included them as they can be helpful to some users. While the direction of the arrows can be meaningfully compared between all triangle diagrams generated, this is not the case for the colours.
<!--{same three triangles as above but with colours }-->


**The sliders** to make it easier to explore different scenarios ``DrMxR`` has been set up with sliders through which users can mix gene drive parameters. You can move them around and see how the triangle diagram changes (one some machines you may need to wait a few seconds for display to update, so be patient if necessary).
If you want more options press the plus symbol on the right of each slider. This includes the capacity to type in numerical values. Hold the mouse over other options to see a description popup.
The big reset button at the bottom of the panel returns all the sliders to their default position of *no-drive*.
Note that the default position of some slider is on the left and some is on the right. Also that while 
all other sliders range from 0-1, *Drive efficiency, p* has a theoretical minimum value of 0.5 (equal segregation) and a max of 1.


**The parameters**, the key insight of the ``DrMxR`` approach is that fact that drive parameters previously in earlier works, using a variety of names and approaches can be considered as representing one of three factors (as described in the full paper). These are the section headings in the ``DrMxR`` window : distortion, viability and fertility selection  
While ``DrMxR`` allows you to seamlessly mix parameters that may have previously have been viewed as coming from distinct drive systems, it is important to note ``DrMxR`` always presents the results for a single combination drive construct.

<!--Parameter Description-->

**Technical notes** this is probably a bit technical for most users but currently ``DrMxR`` is focused on a particular class of gene drive systems 

* It does not incorporate the impact of random events (it assumes a large population).
* It assumes that both sexes are equivalent in all ways and that the sex ratio is equal.
* Only a single drive construct is modelled (this is the case even when you mix different drive systems).
* The drive construct is on an autosome (i.e. it is not on chromosomes that are specific to particular sex)
* Diploid chromosomes (no endosymbionts).
* The organism in question can only reproduce sexually. 
* The model allows for overlapping generations.
