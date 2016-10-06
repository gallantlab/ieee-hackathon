DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/models"
if [ ! -d "${DIR}" ]; then
    mkdir "${DIR}";
fi

printf "\033[0;35m\033[1m> downloading trained model\n"
wget -O "${DIR}/bsridge-directdecoding-alphas2to4-nboots10.h5" https://berkeley.box.com/shared/static/7a9bey1qudhv2megh138sf5bzyni5rtm.h5
