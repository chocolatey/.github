<!--
BEFORE YOU CREATE A PULL REQUEST:

Ensure you have read over [CONTRIBUTING.md](./CONTRIBUTING.md). We provide VERY defined guidance (as such, we strongly adhere to it).

A summary of our expectations:
 - You are not submitting a pull request from your MASTER / MAIN branch.
 - You are able to sign the Contributor License Agreement (CLA).
 - YOUR GIT COMMIT MESSAGE FORMAT IS EXTREMELY IMPORTANT. We have a very defined expectation for this format and are sticklers about it. Really, READ the entire Contributing document. It will save you and us pain.
 - Do not reformat code, it makes it hard to see what has changed. Leave the formatting to us.

THANKS! We appreciate you reading the entire Contributing document and not just scanning through it.

Name your pull request appropriately: give it a sentence that reads well enough for anyone seeing this.

if you were explaining it to somebody else. This helps others to understand the reasons for the pull request and for it to be searchable in future.

Please do not remove any of the headings.
If a heading is not applicable then enter N/A: Why it's not applicable

Make sure you have raised an issue for this pull request before continuing.

Please remove all comments before submitting.
-->

## Description Of Changes
<!-- Enter a description of the pull request changes -->

## Motivation and Context
<!-- Why is this change necessary and under what context is it being done -->

## Testing
<!-- How has this change been tested? If multiple different tests have been done please list them.
1. Tested this way
1. Tested that way
-->
### Operating Systems Testing
<!-- If this is a code change, list the operating systems this has been tested on
- Windows Server 2019
- Windows 10
...
-->

## Change Types Made
<!-- Tick the boxes for the type of changes that have been made -->

* [ ] Bug fix (non-breaking change).
* [ ] Feature / Enhancement (non-breaking change).
* [ ] Breaking change (fix or feature that could cause existing functionality to change).
* [ ] Documentation changes.
* [ ] PowerShell code changes.

## Change Checklist

* [ ] Requires a change to the documentation.
* [ ] Documentation has been updated.
* [ ] Tests to cover my changes, have been added.
* [ ] All new and existing tests passed?
* [ ] PowerShell code changes: PowerShell v3 compatibility checked?

## Related Issue
<!-- Make sure you have raised an issue for this pull request before
continuing. -->

Fixes #

## Reason for Draft Status

<!-- If your PR is not ready for review in it's current state, please open it as a Draft and provide further details here. -->

N/A

<!-- PLEASE REMOVE ALL COMMENTS ABOVE BEFORE SUBMITTING -->

<!-- PLEASE DO NOT CHANGE ANYTHING BELOW -->

## Chocolatey Team Pre-merge Checklist

This section is for Chocolatey team members to validate things prior to merge. Each section should have only one option selected. Any option marked with `(*)` should have an individual comment with further details.

### Corresponding Product Changes

* [ ] This PR affects other Chocolatey products that may need corresponding changes. (eg: Chocolatey GUI, Chocolatey Licensed Extension)
* [ ] This PR does not affect other Chocolatey products that may need corresponding changes. (eg: Chocolatey GUI, Chocolatey Licensed Extension)

### Milestone Tracking

* [ ] This PR is attached to an issue that is attached to a milestone.
* [ ] This PR is not attached to an issue, so it has been attached to a milestone.
* [ ] This PR does not need to be attached to a milestone. (*)

### Inter-branch Porting

* [ ] This PR affects changes that will need to be ported to other branches. (*)
* [ ] This PR does not affect changes that will need to be ported to other branches.

#### Pester Test Specifics

* [ ] This PR affects Pester tests unrelated to Chocolatey CLI changes that need to be ported to the `master` branch.
* [ ] This PR affects Pester tests due to build changes and needs to be ported to both `master` and `support` branches.
