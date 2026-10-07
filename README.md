# digger-heavy-management-repo

A deliberately heavy repository used as `DIGGER_MANAGEMENT_REPO` when testing
Digger's `git_timeout`. A `git clone --depth 1 --single-branch` of `main` is
meant to take well over Digger's default 30 second per-command git timeout on a
GitHub-hosted runner, so a policy check that clones this repo only succeeds when
the configured `git_timeout` actually reaches the clone.

Layout:

- `policies/access.rego`: the org-level access policy Digger looks for last
  (`policies/access.rego`). It allows `digger plan` for everyone, so a clone that
  finishes leads to a passing policy check.
- `live/`: ~10k small dummy terragrunt files, shaped like a large IaC monorepo.
- `blobs/`: random, incompressible 95 MiB files added by the
  `generate-heavy-data` workflow. These are what make the clone slow.

Workflows:

- `generate-heavy-data` (manual): appends `chunks` pushes of `blobs_per_chunk`
  random blobs straight from the runner, then times a fresh clone.
- `measure-clone` (manual): times `git clone --depth 1 --single-branch` of
  `main` on a fresh runner and writes the result to the job summary.

Context: diggerhq/digger PRs #2706, #2724 and #2739 added `git_timeout` to
`digger.yml`; this repo reproduces the remaining case where the timeout did not
reach the management repo clone in backend-orchestrated (spec / drift) runs.
