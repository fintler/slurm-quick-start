name "slurm-head"
description "SLURM cluster headnode"
run_list(
  "recipe[slurm::munge]",
  "recipe[slurm::slurm]",
  "recipe[slurm::openmpi]",
  "recipe[slurm::pdsh]"
)
