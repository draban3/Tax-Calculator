Tax Calculator
=======
The Tax Calculator is a calculator for the US federal individual income tax system. In conjunction with micro data that represents US taxpayer characteristics and a set of behavioral assumptions, we use the Tax Calculator to conduct revenue estimation and distributional analyses of tax policies. 

Documentation for the Tax calculator is available at http://taxcalc.readthedocs.org/en/latest/.

About OSPC
=======
The Open-Source Policy Center (OSPC) seeks to make policy analysis more transparent, trustworthy, and collaborative by harnessing open-source methods to build cutting-edge economic models. 

Disclaimer
========
The Tax-Calculator is currently under development. Therefore, there is NO GUARANTEE OF ACCURACY. THE CODE SHOULD NOT CURRENTLY BE USED FOR PUBLICATIONS, JOURNAL ARTICLES, OR RESEARCH PURPOSES. DO NOT CITE. Furthermore, users should be forewarned that the interface could change significantly, and the implementation is subject to wild change. The code is currently available for testing purposes only.


Installation
=======
The taxcalc package is installable via `python setup.py install`. We currently test against Python 2.7 and 3.4. You can install the latest conda package via

```
conda install -c ospc taxcalc
```

which will grab the latest taxcalc package from binstar.org. Currently, we host Python 2.7 and 3.4 packages for Linux, OS X, and Windows.

For contributors, the conda recipe is located in the `conda.recipe` directory. You can build the conda package via the `conda build` command:

```
conda build --python 3.4 conda.recipe/
```

To learn more about the conda package manager, go to conda.pydata.org.

