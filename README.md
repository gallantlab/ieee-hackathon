# IEEE-HACKATHON

Welcome to the Gallant Lab's offering for the 2016 IEEE International Conference on Systems, Man, and Cybernetics Hackathon!

For this project, you'll have access to brain activity from a human subject listening while they listen to hours of stories. Your goal is to design a method to decode their brain activity and predict what the subject heard. How you do it is completely up to you. We've provided easy starting points for NLP hackers wanting to construct custom features from the text data and ML hackers who just want to dive in using our features.

## getting started

~~~ sh
$ git clone https://github.com/gallantlab/ieee-hackathon.git
~~~

## the data
Smaller files like the story text are included in this repository, and the larger files are stored in a publicly-accessible Box.

### brain responses
- [responses.h5](https://berkeley.box.com/shared/static/znhnewml3snwwio48wkup06um9y6vl9y.h5)
 - The voxel responses for a single subject listening to eleven training stories and one test story. The responses to individual stories are stored in separate arrays.

### stimuli (raw text)
- `TextGrids`, `ieee-hackathon/data/grids`
 - This folder contains files with the time-stamped text of the stories
- `TR Files`, `ieee-hackathon/data/trfiles
 - This folder contains information you'll need to align the stories with the brain responses
### stimuli (precomputed features)
- [features.h5](https://berkeley.box.com/shared/static/r0b65ge04ypym4xg4epe3yex9sfb2f53.h5)
 - The pre-computed feature vectors (computed from a `word2vec` language model) for each of the stories in the `responses.h5` file (except the test story).
### decoding example
- [bsridge-directdecoding-alphas2to4-nboots10.h5](https://berkeley.box.com/shared/static/7a9bey1qudhv2megh138sf5bzyni5rtm.h5)
 - Linear regression weights from a the example decoding model which predicts word embedding vectors from voxel activity.

At the very least you'll need to download the responses, which you can do by running the following script:

~~~ sh
$ bash download_responses.sh
~~~

You might also want to download our precomputed stimulus features:
~~~ sh
$ bash download_features.sh
~~~

## decoding example notebook

To help you get a lay of the land, we made a Jupyter notebook containing a simple decoding example. We recommend starting here to familiarize yourself with the data. Github provides a simple way to [view the notebook](https://github.com/gallantlab/ieee-hackathon/blob/master/notebooks/00-brain-decoding.ipynb). Just viewing the notebook might be sufficient to get you started. Optionally, if you'd like to interact with it you'll need to [install Jupyter](https://jupyter.readthedocs.io/en/latest/install.html#new-to-python-and-jupyter). After cloning this repository with the `git clone` command above, run the following commands:

~~~ sh
$ cd ieee-hackathon/notebook
$ jupyter notebook
~~~

This should pop up a browser with the notebook, where you can edit and run the notebook.