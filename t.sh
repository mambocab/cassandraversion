PY2OUT=`python2 cassandraversion`
PY3OUT=`python3 cassandraversion`

PY23DIFF=`diff -b <(echo $PY2OUT) <(echo $PY3OUT)`
if [[ -n $PY23DIFF ]] ; then
  echo $PY23DIFF
  echo NOOOOO
else
  echo $PY2OUT
  echo YAY
fi
