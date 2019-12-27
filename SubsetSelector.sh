for file in /scratch/rm5310/myjupyter/Vision-ML/egohands/all_vids/*
do
  fname=$(echo $file |  sed -r "s/.+\/(.+)\..+/\1/")
  echo $fname
  /scratch/rm5310/myjupyter/Vision-ML/vis-dss/build/SimpleVideoSummExample -videoFile $file -videoSaveFile /scratch/rm5310/myjupyter/Vision-ML/egohands/subset_vids/$fname.avi -summaryModel 0 -segmentType 0 -summaryAlgo 0 -budget 10 
done
