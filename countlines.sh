#!/bin/bash
usage() { echo "Usage: $0 [-o <string>] or [-m <1-12>]" 1>&2; exit 1; }

while getopts ":o:m:" arg; do
    #echo "arg = ${arg}"
    #echo "optind = ${OPTIND}"
    case ${arg} in
        o)
            ow=${OPTARG}
            # for i in $(find . \( ! -regex '.*/\..*' \) -type f -maxdepth 1 -user ${ow})
            # do
            #     b=${i:2}
            #     echo "$b"
            # done
            find . \( ! -regex '.*/\..*' \) -type f -maxdepth 1 -user ${ow} -print0 | while read -d $'\0' file
            do
                b=${file:2}
                echo "$b"
            done
            ;;
        m)
            mv=${OPTARG}
            ((mv >= 1 && mv <= 12)) || usage
            # for i in ./*
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

# find . \( ! -regex '.*/\..*' \) -type f -maxdepth 1 -user rvillegas