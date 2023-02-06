package terraform.analysis

import input as tfplan


# Whether there is any change to IAM
touches_iam {
    all := resources["aws_iam"]
    count(all) > 0
}

