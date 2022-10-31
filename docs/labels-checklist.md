# Label Synchronization Checklist

This document details each step needed when configuring a repository to synchronize with the labels available in this repository.

## Checklist for existing repositories

- [ ] Install the PowerShell Module called `powershell-yaml`.
- [ ] Install the GitHub Client (available through Chocolatey CLI in the package `gh`).
- [ ] Authenticate GitHub Client (Run `gh auth login`).
- [ ] Clone this repository and run the helper script `docs/labels.ps1` using the Organization and Repository parameters on the script set to the organization and repository name of the new Repository.
- [ ] Ensure that the label `Task` is renamed to `TaskItem` if it exist in the repository.
- [ ] If no warnings are output, other than the mention of the `Task` label, continue with the tasks for completely new repositories, below.
- [ ] Create a new draft pull request based on the following PR https://github.com/chocolatey/docs/pull/550/files into the repository to synchronize.
- [ ] Update the local `labels.yml` file in the PR with the information that was output as warnings.
- [ ] Run through the checklist for testing synchronization.
- [ ] Move the pull request out of draft state once testing has been successful.
- [ ] Update the README.md to mention that labels are automatically synced, with a link back to the README.md file in the `.github` repository.
- [ ] Take a note of the issues for all labels (both closed and open) and save this locally.
- [ ] Get someone to review and merge the changes.
- [ ] Wait until the labels have been synchronized.
- [ ] Review the previously saved information about labels on issues, and compare any differences.
  - If something went wrong, make sure to reapply the label to issues that had their label removed (this should be rare).
- [ ] Add the new repository to the label sync section in the `.github` repository README.md.


## Checklist for completely new repositories

- [ ] Update the file in this repository `.github/sync.yml`.
- [ ] Add your new repository to the first `group.files.repos` list (before any comments). This will automatically generate a new PR. Wait until the PR is created before continuing.
- [ ] Review the PR and make sure the information is correct.
- [ ] If this is a completely new repository, and not an existing repository, change the `delete-other-labels` to `true` before merging.
- [ ] Update the README.md in the new repository to mention that labels are automatically synced, with a link back to the README.md file in the `.github` repository.
- [ ] Add the new repository to both file and label sync section in the `.github` repository README.md

## Testing synchronization in a fork

- [ ] Create a fork of the repository you wish to synchronize.
- [ ] Enable `Issues` and `GitHub Action Workflows` in your fork.
- [ ] Generate your own Personal Access Token with the permissions: `repo` and `workflows` enabled (_may not need `workflows`_).
- [ ] Create a new GitHub Secret on your fork with the name `SYNC_TOKEN` and the value of the generated Personal Access Token.
- [ ] Run the following `gh` commands (replace `USER` with your username, and `FORK` with the name of your fork, `OWNER` with the upstream organization and `REPO` with the upstream repository name):
  - [ ] ```
        gh label list -R "USER/FORK" --json name --limit 100 | ConvertFrom-Json | % {
            gh label delete -R "USER/FORK" $_.name --confirm
        }
        ```
  - [ ] ```
        gh label clone OWNER/REPO --repo USER/FORK --force
        ```
- [ ] Go to the the Actions Tab.
- [ ] Click on Action named `Sync labels`.
- [ ] Press the dropdown button marked `Run workflow`.
- [ ] Select the branch you want to test the labels from (**IMPORTANT: If you recently changed the `labels.yml` file upstream, allow 10 minutes to pass before triggering the run**).
- [ ] Click the `Run workflow` command.
- [ ] After the workflow has completed, verify the that the labels got updated as you expected in your fork.