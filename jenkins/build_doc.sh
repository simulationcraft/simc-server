DOXYGEN_EXEC="doxygen"
DOC_DIR="./doc"
DOXYGEN_OUT="./doxygen/"
WEB_OUT="/simc/doxygen/"

# cd into doc folder
cd ${DOC_DIR}

# build doc
${DOXYGEN_EXEC}

# copy doc to webserver
cp ${DOXYGEN_OUT} ${WEB_OUT}