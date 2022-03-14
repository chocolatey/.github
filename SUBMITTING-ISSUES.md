# Submitting Issues

 * If you are having issue with a package, please see [Request Package Fixes or Updates / Become a maintainer of an existing package](https://docs.chocolatey.org/en-us/community-repository/users/package-triage-process).
 * If you are looking for packages to be added to the Chocolatey Community Repository (aka [https://community.chocolatey.org](https://community.chocolatey.org/packages)), please see [Package Requests](https://docs.chocolatey.org/en-us/community-repository/users/package-triage-process#package-request-package-missing).

 1. Start with [Troubleshooting](https://docs.chocolatey.org/en-us/troubleshooting) and the [FAQ](https://docs.chocolatey.org/en-us/faqs) to see if your question or issue already has an answer.
 1. If not found or resolved, please follow one of the following avenues:
    * If you are a licensed customer, please see [Support](https://chocolatey.org/support). You can also log an issue at [Licensed Issues](https://github.com/chocolatey/chocolatey-licensed-issues) and we will submit issues to all other places on your behalf. Another avenue is to use email support to have us submit tickets and other avenues on your behalf (allowing you to maintain privacy).
    * If it is an enhancement request or issue with the website (the Chocolatey Community Repository aka [https://community.chocolatey.org](https://community.chocolatey.org)), please submit an issue to the [Chocolatey.org repository](https://github.com/chocolatey/home).
    * If you have found an issue with the GUI (Chocolatey GUI) or you want to submit an enhancement, please see [the ChocolateyGUI repository](https://github.com/chocolatey/ChocolateyGUI/SUBMITTING-ISSUES).
    * If you have found an issue with the client (choco.exe), or you want to submit an enhancement, please see [the Chocolatey repository](https://github.com/chocolatey/choco/SUBMITTING-ISSUES).

Observe the following help for submitting an issue:

Prerequisites:

 * The issue is not a package or website issue.
 * Please check to see if your issue already exists with a quick search of the issues. Start with one relevant term and then add if you get too many results.
 * You are not submitting an "Enhancement". Enhancements should observe [CONTRIBUTING](./CONTRIBUTING.md) guidelines.
 * You are not submitting a question - questions are better served as [emails](https://groups.google.com/group/chocolatey) or [chat questions](https://gitter.im/chocolatey/choco).
 * Please make sure you've read over and agree with the [Code of Conduct](./CODE_OF_CONDUCT.md).

Submitting a ticket:

 * Issues / enhancements have templates that ask for information. Please complete those to ensure that all of the pieces of information we need are captured as they help to show us exactly what the problem is.
 * We'll need debug and verbose output, so please run and capture the log with `-dv` or `--debug --verbose`. You can submit that with the issue or [create a gist and link it](https://docs.github.com/en/github/writing-on-github/editing-and-sharing-content-with-gists/creating-gists).
 * **Please note** that the debug/verbose output for some commands may have sensitive data (passwords or API keys), so please remove those, if they are there, prior to submitting the issue.
 * choco.exe logs to a file in `$env:ChocolateyInstall\log\`. You can grab the specific log output from there so you don't have to capture or redirect screen output. Please limit the amount included to just the command run (the log is appended to with every command).
 * Please save the log output in a [gist](https://gist.github.com) (save the file as `log.sh`) and link to the gist from the issue. Feel free to create it as secret so it doesn't fill up against your public gists. Anyone with a direct link can still get to secret gists. If you accidentally include secret information in your gist, please delete it and create a new one (gist history can be seen by anyone) and update the link in the ticket (issue history is not retained except by email - deleting the gist ensures that no one can get to it). Using gists this way also keeps accidental secrets from being shared in the ticket in the first place as well.
 * We'll need the entire log output from the run, so please don't limit it down to areas you feel are relevant. You may miss some important details we'll need to know. This will help expedite issue triage.
 * It's helpful to include the version of choco, the version of the OS, and the version of PowerShell (Posh) - the debug script should capture all of those pieces of information.
 * Include screenshots and/or animated gifs whenever possible, they help show us exactly what the problem is.