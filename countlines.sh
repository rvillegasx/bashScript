#!/bin/bash
usage() { echo "Usage: $0 [-o <string>] or [-m <1-12>]" 1>&2; exit 1; }

while getopts ":o:m:" arg; do
    #echo "arg = ${arg}"
    #echo "optind = ${OPTIND}"
    case ${arg} in
        o)
            ow=${OPTARG}
            ;;
        m)
            mv=${OPTARG}
            ((mv >= 1 && mv <= 12)) || usage
            ;;
        *)
            usage
            ;;
    esac
done
#shift $((OPTIND-1))
# echo "optind = ${OPTIND}"
# echo "$#"
if [ $# -gt 2 ]; then
    usage
fi
echo "optind = ${OPTIND}"
echo "o = ${ow}"
echo "m = ${mv}"
