#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
export fly_target=${fly_target:-tutorial}
echo "Concourse API target ${fly_target}"
echo "Tutorial $(basename $DIR)"

pushd "$DIR"
  fly -t ${fly_target} set-pipeline -p tutorial-pipeline -c ci/pipeline/pipeline.yml -n
  fly -t ${fly_target} unpause-pipeline -p tutorial-pipeline
  fly -t ${fly_target} trigger-job -w -j tutorial-pipeline/job-create-files
popd