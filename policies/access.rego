package digger

import rego.v1

default allow := false

# Anyone may plan (drift runs plan as the "digger" user).
allow if input.action == "digger plan"

# Only the Digger bot or the repo owner may apply.
allow if {
	input.action == "digger apply"
	input.user in {"digger", "s1ntaxe770r"}
}
