name "bootstrap"
description "openorion test ap bootstrap"
run_list(
  "role[base]",
  "recipe[heat::bootstrap]"
)
