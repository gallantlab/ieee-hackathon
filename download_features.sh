# downloads an hdf5 file containing the fMRI responses to ./data/responses.h5
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/data"
if [ ! -d "${DIR}" ]; then
    mkdir "${DIR}";
fi

printf "\033[0;35m\033[1m> downloading features\n"
wget -O "${DIR}/features.h5" https://berkeley.box.com/shared/static/r0b65ge04ypym4xg4epe3yex9sfb2f53.h5
