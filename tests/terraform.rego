package terraform.analysis

import input as tfplan

# Authorization holds if no changes are made to IAM
default authz := false
authz {
    not touches_iam
}


# Whether there is any change to IAM
touches_iam {
    all := resources["aws_iam"]
    count(all) > 0
}


### HELPERS ###

# list of all resources of a given type
resources[resource_type] := all {
    some resource_type
    #resource_types[resource_type]
    all := [name |
        name:= tfplan.resource_changes[_]
        name.type == resource_type
    ]
}

