#!/bin/bash
usage() { echo "Usage: $0 [-o <string>] [-m <1-12>]" 1>&2; exit 1; }

while getopts ":o:m:" o; do
    case "${o}" in
        o)
            ow=${OPTARG}
            ;;
        m)
            m=${OPTARG}
            ((m >= 45 || m <= 90)) || usage
            ;;
        *)
            usage
            ;;
    esac
done
shift $((OPTIND-1))

if [ -z "${o}" ] || [ -z "${m}" ]; then
    usage
fi

echo "o = ${ow}"
echo "m = ${m}"