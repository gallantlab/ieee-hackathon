# IEEE-HACKATHON

Welcome to the Gallant Lab's offering for the 2016 IEEE International Conference on Systems, Man, and Cybernetics Hackathon!

For this project, you'll have access to brain activity from a human subject listening while they listen to hours of stories. Your goal is to design a method to decode their brain activity and predict what the subject heard.

## getting started

Everything you'll need to get started is in the Jupyter notebook in the `notebooks` directory. Github provides a simple way to [view the notebook](https://github.com/gallantlab/ieee-hackathon/blob/master/notebooks/00-brain-decoding.ipynb). To interact with it, you'll need to [install Jupyter](https://jupyter.readthedocs.io/en/latest/install.html#new-to-python-and-jupyter). Then run the following commands to clone this repository and run the notebook:

~~~ sh
$ git clone https://github.com/gallantlab/ieee-hackathon.git
$ cd ieee-hackathon/notebook
$ jupyter notebook
~~~

This should pop up a browser with the notebook, which will guide you through downloading the data and loading it into a workable format.

## the data
If you just want to download the data yourself, it's stored in a publicly-accessible Box. There are three files.
- [responses.h5](https://berkeley.box.com/shared/static/znhnewml3snwwio48wkup06um9y6vl9y.h5)
 - The voxel responses for a single subject listening to eleven training stories and one test story. The responses to individual stories are stored in separate arrays.
- [features.h5](https://berkeley.box.com/shared/static/r0b65ge04ypym4xg4epe3yex9sfb2f53.h5)
 - The pre-computed feature vectors (computed from a `word2vec` language model) for each of the stories in the `responses.h5` file (except the test story).
- [bsridge-directdecoding-alphas2to4-nboots10.h5](https://berkeley.box.com/shared/static/7a9bey1qudhv2megh138sf5bzyni5rtm.h5)
 - Linear regression weights from a decoding model which predicts word embedding vectors from voxel activity.