---
name: Report Issue
about: Did you find unexpected behavior?
---

<!--
Ensure you have read over [Submitting Issues](https://github.com/chocolatey/.github/blob/main/SUBMITTING-ISSUES.md)

Please check to see if your issue already exists with a quick search of the issues. Start with one relevant term and then add if you get too many results.

NOTE: Keep in mind we have a [Code Of Conduct](https://github.com/chocolatey/.github/blob/main/CODE_OF_CONDUCT.md) that we expect folks to observe when they are looking for support in the Chocolatey community.

Name your issue appropriately: give it a sentence that reads well enough for anyone seeing this in the release notes to what it is.

When writing out the issue details please ensure you are writing it as if you were explaining it to somebody else.
Even if you will be working on and resolving the issue yourself. This helps others to understand the reasons for the
pull request and for it to be searchable in future.
-->

### What You Are Seeing?

### What is Expected?

### How Did You Get This To Happen? (Steps to Reproduce)
<!--
Add the steps that allows US to reproduce your problem. For example.

1. I ran this command `choco source list`
1. No sources were displayed.
1. I then ran this command `choco blah`
1. etc.

NOTE: We may be unable to troubleshoot / respond to issues without reproducible
steps. If you do not complete this section there is a high chance your issue
may be closed.
-->


### System Details

* OS Build (In PowerShell run `[System.Environment]::OSVersion.version.tostring()`): 
* Windows PowerShell version (Run: `$PSVersionTable`): 
* Chocolatey version (Run `choco --version`): 
* Chocolatey Licensed Extension version (Run `choco list chocolatey.extension --local --exact`): 
* Chocolatey License type (Professional / Business / ?): 

### Output Log
<!--
When including the log information, please ensure you have run the command with --debug --verbose. It provides important information for determining an issue

- Make sure there is no sensitive data shared.
- We need ALL output, not just what you may believe is relevant.
- We need ALL OUTPUT (including the configuration information), see https://gist.github.com/ferventcoder/b1300b91c167c8ac8205#file-error-txt-L1-L41 for what we need.
- If it is hard to reproduce with debug/verbose, the log file already logs with those parameters, just grab the relevant section from the log file (in the logs directory of your Chocolatey install).
-->


<details>
<summary>Full Log Output</summary>

<p>

~~~sh
IF YOUR LOG CONTENT IS SHORT, PLACE IT HERE - WE NEED _ALL_ DETAILED OUTPUT BASED ON THE ABOVE TO BE ABLE TO PROVIDE SUPPORT (YOU WILL FIND THAT IN THE $env:ChocolateyInstall\logs\chocolatey.log between the `=====`)
IF YOUR LOG CONTENT IS LONG, PLEASE LINK TO A GIST (see https://docs.github.com/en/github/writing-on-github/editing-and-sharing-content-with-gists/creating-gists)
~~~

</p>

</details>
