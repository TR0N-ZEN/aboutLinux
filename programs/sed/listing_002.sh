#!/bin/bash

#PROJECT=''

function determine
{
  PROJECT="`echo $1 | sed -n -e '
    s/.*\(01099\).*/Dresden/
    s/.*\(Toten Hosen\).*/Westen/
    s/.*\(Rammstein\).*/Ost-Berlin/
    p
  '`"
  return 0
}

determine 'afas01099agd' && echo $PROJECT
determine 'gaToten Hosen1512' && echo $PROJECT
determine 'afasRammstein00019' && echo $PROJECT
