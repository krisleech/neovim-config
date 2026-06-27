Stage all changed files, commit with a user-provided message, and push to the remote.

1. Run `git status --short` and display the file list clearly, labelling each file as already staged, modified, or untracked. Every file shown will be included in the commit.
2. Ask the user: "Enter your commit message:" and wait for their response.
3. Run `git add -A` to stage all changes.
4. Run `git commit -m "<their message>"`.
5. Run `git push` to push to the remote.
6. Report the result of each step.
