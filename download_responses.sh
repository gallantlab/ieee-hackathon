# downloads`a hdf5 file containing the fMRI responses to ./data/responses.tar.gz
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/data"
if [ ! -d "${DIR}" ]; then
    mkdir "${DIR}";
fi

printf "\033[0;35m\033[1m> downloading responses\n"
wget -O "${DIR}/responses.h5" https://berkeley.box.com/shared/static/znhnewml3snwwio48wkup06um9y6vl9y.h5