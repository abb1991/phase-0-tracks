# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
The given definition is "Version control allows us to view the entire history of revisions to one or more files, and merge revisions made by different people." Which to me means that version control is essentially a 'save' point while working in the command line. It allows you to go back to older versions of your code if you've wandered off down a line of thought that turned out to not be very fruitful.
* What is a branch and why would you use one?
Branches are ways of breaking up work on a project into descrete sections, usually when working in a group. They allow everyone to inhert the same original 'master' code, then add the elements on which they're working. It's a useful way to break up workflow with multiple coders, so that they aren't stepping on each others' feet constantly.
* What is a commit? What makes a good commit message?
A commit is a save point for a given file, along with a message that describes the work most recently done on it. For example, if I update a file to include a list of my ten favorite books, my commit message might be something like 'added 10 favorite books'.
* What is a merge conflict?
Merge conflicts are when git is trying to merge two branches that have both been modified. So if there are braches A and B, both of which contained file '1' origionally, but both have been modified so that A now contains '1', '2' and B contains '1', '3', then git can't make the decision if new commit '3' should supercede, submit, or coexist with '2', which is where a coder comes in and resolve the merge conflicts.