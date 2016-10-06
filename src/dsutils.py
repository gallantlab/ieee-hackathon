import numpy as np
from DataSequence import DataSequence

DEFAULT_BAD_WORDS = frozenset(["sentence_start", "sentence_end", "br", "lg", "ls", "ns", "sp"])

def make_word_ds(grids, trfiles, bad_words=DEFAULT_BAD_WORDS):
    """Creates DataSequence objects containing the words from each grid, with any words appearing
    in the [bad_words] set removed.
    """
    ds = dict()
    stories = grids.keys()
    for st in stories:
        grtranscript = grids[st].tiers[1].make_simple_transcript()
        ## Filter out bad words
        goodtranscript = [x for x in grtranscript
                          if x[2].lower().strip("{}").strip() not in bad_words]
        d = DataSequence.from_grid(goodtranscript, trfiles[st][0])
        ds[st] = d

    return ds

def make_word2vec_model(wordseq, model):
    vecs = np.empty((len(wordseq.data), model.vector_size))
    for wi, w in enumerate(wordseq.data):
        try:
            vecs[wi,:] = model[w]
        except KeyError, e:
            vecs[wi,:] = np.zeros(model.vector_size)
    return DataSequence(vecs, wordseq.split_inds,
                        wordseq.data_times, wordseq.tr_times)
