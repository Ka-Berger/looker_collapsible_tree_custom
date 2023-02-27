project_name: "collapsible-tree-custom-chart"

constant: VIS_LABEL {
  value: "Collapsible Tree Custom Chart"
  export: override_optional
}

constant: VIS_ID {
  value: "collapsible-tree-custom-chart"
  export:  override_optional
}

visualization: {
  id: "@{VIS_ID}"
  file: "collapsible_tree_custom.js"
  label: "@{VIS_LABEL}"
}
