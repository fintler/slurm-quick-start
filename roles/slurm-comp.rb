name "slurm-comp"
description "SLURM cluster compute node"
run_list(
  "recipe[slurm::munge]",
  "recipe[slurm::slurm]",
  "recipe[slurm::openmpi]"
)

