name "hpc-comp"
description "HPC cluster compnode"
run_list(
  "recipe[autofs::client]",
  "recipe[rsyslog::client]",
  "recipe[ganglia::client]"
)
