#
# Debug Echo function.  If DEBUG is set, echo parameters
#

debecho () {
if [ ! -z "$DEBUG" ]; then
	echo ">> ${1}" >&2
fi
}

checkfor () {
for checkit in ${*}; do
	if ! which ${checkit} &> /dev/null; then
		echo "Pre-requisites not met -- ${checkit} is not installed."
		exit 99
	fi
done
}

debecho "Successfully loaded functions.sh include file..."
