name "hpc-head"
description "HPC cluster headnode"
run_list(
  "recipe[autofs::server]",
  "recipe[rsyslog::server]",
  "recipe[ganglia::server]"
)
