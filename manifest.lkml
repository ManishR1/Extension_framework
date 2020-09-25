project_name: "test"

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
# local_dependency: {
#   project: "name_of_other_project"
# }
application: look-runner {
  label: "Look runner"
  file: "/bundle.js"
  entitlements: {
    local_storage: no
    navigation: no
    new_window: no
    allow_forms: no
    allow_same_origin: no
    core_api_methods: ["all_looks", "run_look"]
    external_api_urls: []
    oauth2_urls: []
  }
}
