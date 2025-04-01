#!/bin/bash
#
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

WRKSPC=$SCRATCH/BNS-GCN
# everything will be installed in $WRKSPC

ENV_NAME="venv"
# this is the name of your python venv, change if needed

cd $WRKSPC
echo -e "${RED}Creating Python Environment in $WRKSPC:${GREEN}"

module load pytorch/1.13.1
python -m venv $WRKSPC/$ENV_NAME --system-site-packages

echo -e "${RED}Installing Dependencies:${GREEN}"
source $WRKSPC/$ENV_NAME/bin/activate
pip install --upgrade pip
pip install -r requirements.txt


python -c "import torch; print(torch.__version__)"
echo -e "${RED}Your Python Environment is ready. To activate it run the following commands in the SAME order:${NC}"
echo -e "${GREEN}source $WRKSPC/$ENV_NAME/bin/activate${NC}"
echo ""
echo -e "${NC}"
