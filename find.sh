if [[ ! $1 ]]; then
    echo 'Needs a term.'
    exit 1
fi

if [[ ! $2 ]]; then
    echo 'Needs an extension.'
    exit 1
fi

if [[ ! $3 ]]; then
    echo 'Needs a before/after lines amount.'
    exit 1
fi

echo ''
echo ''
echo "******** Searching ${2} ********"
echo ''
echo ''
echo "In: " `pwd`
echo ''
echo ''
find . -type f -name '*.'"${2}" -exec egrep -Hn -A${3} -B${3} "${1}" {} ";"
echo ''
echo ''
echo "******** End Search ********"
echo ''
echo ''