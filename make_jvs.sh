#!/usr/bin/env bash
tar=${1:-./datasets/jvs_ver1}
out=${2:-./output}

for dir in $(ls -d $tar/*/); do
    base=$(basename $dir)
    if [ ! -d $out/$base ]; then
        $(mkdir -p $out/$base)
    fi

    ln -sf $dir/parallel100/wav24kHz16bit/* $out/$base/
done

