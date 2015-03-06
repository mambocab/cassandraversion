PY2OUT=`python2 cassandraversion`
PY3OUT=`python3 cassandraversion`

PY23DIFF=`diff -b <(echo $PY2OUT) <(echo $PY3OUT)`
if [[ -n $PY23DIFF ]] ; then
  echo $PY23DIFF
  echo NOOOOO
  exit 1
else
  echo $PY2OUT
  echo YAY
  exit 0
fi
