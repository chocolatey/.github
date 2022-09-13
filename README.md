# Global GitHub Configuration for organization repositories

## Syncrhonization

### Labels

This repository contains the configuration that all repositories underneath the Chocolatey and Chocolatey Community organization is expected to use.
The configuration file is located in the `.github/labels.yml` file and contains information about the name of the label, the color, the description and any aliases that the label may be known underneath or previously used.
At a minimum when adding a new label the name, color and description should be added. Aliases should only be added if the label is being renamed from something else, or known to conflict with a different name.

Removing labels should be avoided at any cost unless it is known that no other repository have an issue or PR that makes use of the label, instead if it is absolutely needed to remove the label two approaches may be used:

- Add a new label specifically for removed labels, and add the label you wish to remove as an alias.
- Or add/update the local configuration in each of the repositories that make use of the label that will be removed and copy over the existing global value into this local configuration file.

The repositories that synchronizes labels will have their own workflow file called `label-sync.yml` located in the <.github/workflows> directory, repositories that do not contain this file is not being synchronized with the labels
configured in this repository.

The synchronization will happen automatically at midnight UTC, but can also be invoked manually be navigating to <actions/workflows/label-sync.yml> and press the `Run workflow`. By default this will use the default branch of the repository
but can be changed if needed. If testing the workflow through a fork, remember to set a GitHub secret with the name `SYNC_TOKEN` that have the value of your personal access token, or the personal access token of a user with write permissions to
your fork.

#### How can you add the workflow to a new repository?

The label synchronization can easily be added with a bare minimum configuration by navigating to the file `.github/sync.yml` and add the repository you want to add label synchronization to the repo element list.
This will add a bare minimum workflow through a pull request to the repository. This minimum workflow is only set up to synchronize the initial global labels, without removing any existing labels in the repository.
If you need to configure the workflow to also include repository specific/local labels, please see the following pull request on how this was done in the documentation repository here: https://github.com/chocolatey/docs/pull/550/files.
You must configure at least one label if you need to use a local configuration file, otherwise the workflow will throw exceptions.

You will also need to make sure the GitHub secret `SYNC_TOKEN` is available on the repository that will be synchronizing labels, if using the default `SYNC_TOKEN` on public repositories you will need to make sure that the team called `team-sync` have write permissions to the repository.

#### What repositories is configured with label synchronization?

At the moment, currently only two repositories have label synchronization configured, with more hopefully coming in the future.

- This repository (<https://github.com/chocolatey/.github>) - Only synchronizes the labels available in this repository daily, or when manually triggered.
- The documentation repository <https://github.com/chocolatey/docs> - Synchronizes both global labels in this repository and its own local configuration daily, if the local configuration changes or when manually triggered.

#### Known problems with label configuration

- The GitHub Action used is not known to give the best information for bad configurations, due to this it is always best to test the synchronization in your own fork before adding/updating or removing any labels.
- Some labels are not possible to be used in the configuration without the GitHub Action workflow throwing an exception. Currently only one affected label has been identified to cause this. As such avoid adding the label called `Task` to the configuration (no matter the casing).
- Not all labels are currently specified in the global configuration. Before synchronizing to new existing repositories, make sure the labels you are interested in are already available before merging a synchronized pull request.
  Missing labels can be added in the global configuration, or in a local configuration.

