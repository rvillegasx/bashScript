#!/bin/bash
usage() { echo "Usage: $0 [-o <string>] or [-m <1-12>]" 1>&2; exit 1; }

while getopts ":o:m:" arg; do
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
if [ $# -gt 2 ]; then
    usage
fi
if [ -n "${ow}" ];
then
    find . \( ! -regex '.*/\..*' \) -type f -maxdepth 1 -user ${ow} -print0 | while read -d $'\0' file
    do
        f=${file:2}
        l=$(wc $f | awk '{print $1}')
        lc=$(($l + 1))
        echo "File: $f, Lines: $lc $f"
    done
else
    if [ -n "${mv}" ];
    then
        monthnames=(ZERO Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec)
        month=${monthnames[${mv}]}
        ls -l | grep -e $month | awk '{print $9}' | while read -r file
        do
            f=${file}
            l=$(wc $f | awk '{print $1}')
            lc=$(($l + 1))
            echo "File: $f, Lines: $lc $f"
        done
    else
        usage
    fi
fi