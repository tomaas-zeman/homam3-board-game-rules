#!/usr/bin/env bash

case "$(uname -s)" in
    Darwin*)    open=open;;
    Linux*)     open=xdg-open;;
esac

LANGUAGE=$1
SECTION=$2  # supported: 'sections', 'rules'

case "${LANGUAGE}" in
  ru|ua)
    ENGINE=-pdflua
    ;;
  *)
    ENGINE=-pdf
    ;;
esac

if [[ ${LANGUAGE} != en ]]; then
  po4a --no-update po4a.cfg
fi

FILE="main_${LANGUAGE}"
if [[ ! -z ${SECTION} ]]; then
  FILE=${SECTION}
fi

# rm triggers latexmk build even if previous artifacts generated by faulty run of po4a prevent it from running
rm -f ${FILE}.aux && \
  latexmk ${ENGINE} -shell-escape ${FILE}.tex
${open} ${FILE}.pdf &
