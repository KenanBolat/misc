#!/usr/bin/bash



# tar -xvf 20190101_avhrr_h35_extent_not_merged.tar -C ../off/ --wildcards --no-anchored '*__1.hdf'

p="2018-11-29"
start1=$(date +%s)
until [[ $p > 2018-12-26 ]]; do
    start2=$(date +%s)
    echo "$p"
    date_="${p//-}"
    tar -xvf ${date_}_avhrr_h35_extent_not_merged.tar -C ../off/ --wildcards --no-anchored '*__1.hdf'
    p=$(date -I -d "$p + 1 day")
    end=$(date +%s)
    runtime=$((end - start2))
    echo "$file has been exhausted within $runtime "
done
end=$(date +%s)
runtime=$((end - start1))
echo "$file has been exhausted within $runtime "

