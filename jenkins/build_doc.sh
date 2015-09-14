DOXYGEN_EXEC="doxygen"
DOC_DIR="./doc"
DOXYGEN_OUT="./doxygen/"
WEB_OUT="/simc/"

# cd into doc folder
cd ${DOC_DIR}

# build doc
${DOXYGEN_EXEC}

# copy doc to webserver
cp -r ${DOXYGEN_OUT} ${WEB_OUT}