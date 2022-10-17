#!/bin/bash

function determine
{
  PROJECT=`echo $1 | sed -n \
  -e 's/.*\(01099\).*/Dresden/' \
  -e 's/.*\(Toten Hosen\).*/Westen/' \
  -e 's/.*\(Rammstein\).*/Ost-Berlin/' \
  -e 'p'`
  return 0
}

determine 'afas01099agd' && echo $PROJECT
determine 'gaToten Hosen1512' && echo $PROJECT
determine 'afasRammstein00019' && echo $PROJECT
