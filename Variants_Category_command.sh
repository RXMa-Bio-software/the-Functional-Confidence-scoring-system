#! /usr/bin/bash
compare_script=$1
outputDir=$2
bed_file=$3
breed=$4

intersectBed -a ${bed_file} -b /data/yxzhao/rxma/SNP-Category/Variants_Category_tools/github_test/breed/${breed}/region_1a.bed -wa -u >${outputDir}/snp_in_1a.txt
python3 ${compare_script} -a ${bed_file} -b ${outputDir}/snp_in_1a.txt --onlyA -o ${outputDir}/snp_notin_1a.txt
intersectBed -a ${outputDir}/snp_notin_1a.txt -b /data/yxzhao/rxma/SNP-Category/Variants_Category_tools/github_test/breed/${breed}/region_1b.bed -wa -u >${outputDir}/snp_in_1b.txt
python3 ${compare_script} -a ${outputDir}/snp_notin_1a.txt -b ${outputDir}/snp_in_1b.txt --onlyA -o ${outputDir}/snp_notin_1a-b.txt
intersectBed -a ${outputDir}/snp_notin_1a-b.txt -b /data/yxzhao/rxma/SNP-Category/Variants_Category_tools/github_test/breed/${breed}/region_1c.bed -wa -u >${outputDir}/snp_in_1c.txt
python3 ${compare_script} -a ${outputDir}/snp_notin_1a-b.txt -b ${outputDir}/snp_in_1c.txt --onlyA -o ${outputDir}/snp_notin_1a-c.txt
intersectBed -a ${outputDir}/snp_notin_1a-c.txt -b /data/yxzhao/rxma/SNP-Category/Variants_Category_tools/github_test/breed/${breed}/region_1d.bed -wa -u >${outputDir}/snp_in_1d.txt
python3 ${compare_script} -a ${outputDir}/snp_notin_1a-c.txt -b ${outputDir}/snp_in_1d.txt --onlyA -o ${outputDir}/snp_notin_1.txt
intersectBed -a ${outputDir}/snp_notin_1.txt -b /data/yxzhao/rxma/SNP-Category/Variants_Category_tools/github_test/breed/${breed}/region_2a.bed -wa -u >${outputDir}/snp_in_2a.txt
python3 ${compare_script} -a ${outputDir}/snp_notin_1.txt -b ${outputDir}/snp_in_2a.txt --onlyA -o ${outputDir}/snp_notin_1-2a.txt
intersectBed -a ${outputDir}/snp_notin_1-2a.txt -b /data/yxzhao/rxma/SNP-Category/Variants_Category_tools/github_test/breed/${breed}/region_2b.bed -wa -u >${outputDir}/snp_in_2b.txt
python3 ${compare_script} -a ${outputDir}/snp_notin_1-2a.txt -b ${outputDir}/snp_in_2b.txt --onlyA -o ${outputDir}/snp_notin_1-2b.txt
intersectBed -a ${outputDir}/snp_notin_1-2b.txt -b /data/yxzhao/rxma/SNP-Category/Variants_Category_tools/github_test/breed/${breed}/region_2c.bed -wa -u >${outputDir}/snp_in_2c.txt
python3 ${compare_script} -a ${outputDir}/snp_notin_1-2b.txt -b ${outputDir}/snp_in_2c.txt --onlyA -o ${outputDir}/snp_notin_1-2c.txt
intersectBed -a ${outputDir}/snp_notin_1-2c.txt -b /data/yxzhao/rxma/SNP-Category/Variants_Category_tools/github_test/breed/${breed}/region_2d.bed -wa -u >${outputDir}/snp_in_2d.txt
python3 ${compare_script} -a ${outputDir}/snp_notin_1-2c.txt -b ${outputDir}/snp_in_2d.txt --onlyA -o ${outputDir}/snp_notin_1-2.txt
intersectBed -a ${outputDir}/snp_notin_1-2.txt -b /data/yxzhao/rxma/SNP-Category/Variants_Category_tools/github_test/breed/${breed}/region_3a.bed -wa -u >${outputDir}/snp_in_3a.txt
python3 ${compare_script} -a ${outputDir}/snp_notin_1-2.txt -b ${outputDir}/snp_in_3a.txt --onlyA -o ${outputDir}/snp_notin_1-2-3a.txt
intersectBed -a ${outputDir}/snp_notin_1-2-3a.txt -b /data/yxzhao/rxma/SNP-Category/Variants_Category_tools/github_test/breed/${breed}/region_3b.bed -wa -u >${outputDir}/snp_in_3b.txt
python3 ${compare_script} -a ${outputDir}/snp_notin_1-2-3a.txt -b ${outputDir}/snp_in_3b.txt --onlyA -o ${outputDir}/snp_notin_1-2-3.txt
intersectBed -a ${outputDir}/snp_notin_1-2-3.txt -b /data/yxzhao/rxma/SNP-Category/Variants_Category_tools/github_test/breed/${breed}/region_4.bed -wa -u >${outputDir}/snp_in_4.txt
python3 ${compare_script} -a ${outputDir}/snp_notin_1-2-3.txt -b ${outputDir}/snp_in_4.txt --onlyA -o ${outputDir}/snp_notin_1-2-3-4.txt
intersectBed -a ${outputDir}/snp_notin_1-2-3-4.txt -b /data/yxzhao/rxma/SNP-Category/Variants_Category_tools/github_test/breed/${breed}/region_5.bed -wa -u >${outputDir}/snp_in_5.txt
python3 ${compare_script} -a ${outputDir}/snp_notin_1-2-3-4.txt -b ${outputDir}/snp_in_5.txt --onlyA -o ${outputDir}/snp_notin_1-2-3-4-5.txt
rm ${outputDir}/snp_notin_1a.txt ${outputDir}/snp_notin_1a-b.txt ${outputDir}/snp_notin_1a-c.txt ${outputDir}/snp_notin_1.txt ${outputDir}/snp_notin_1-2a.txt ${outputDir}/snp_notin_1-2b.txt ${outputDir}/snp_notin_1-2c.txt ${outputDir}/snp_notin_1-2.txt ${outputDir}/snp_notin_1-2-3a.txt ${outputDir}/snp_notin_1-2-3.txt ${outputDir}/snp_notin_1-2-3-4.txt


