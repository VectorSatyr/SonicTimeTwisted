# Contribution Guide

Welcome to our project. We're happy to have you aboard! :slightly_smiling_face: Before you dive in, here are some ground rules.

## Quick Start Guide

1. Use a source versioning tool to clone (or fork) our repository. We recommend [Github Desktop](https://desktop.github.com/) for this purpose
2. Create a _new branch_ to house all of your changes
2. Install the latest version of [GameMaker Studio 2](https://www.yoyogames.com/) (The minimum required version is **2.2.5.481**)
3. Open SonicTT.ypp in GameMaker Studio 2
4. Make any changes you see fit
5. Follow [these instructions](https://docs2.yoyogames.com/source/_build/1_overview/2_quick_start/6_compiling.html) for compiling your game
6. Have fun! :wink:

## Submitting changes

:no_entry: _Commiting asset changes directly to the _master_ branch is strictly prohibited. Only documentation changes are allowed to be submitted this way._

### Commits

These are basic changes you want to save to your branch. Smaller commits (ie. those with 15 or fewer changed files) are prefered, but we understand that is not always possible.

1. Ensure your branch is using the most up-to-date code available by performing a _rebase merge_ from the _master_ branch (then perform additional tests after the merge to make sure nothing is broken)
2. Ensure a _[Bug Report or Feature Request](https://github.com/VectorSatyr/SonicTimeTwisted/issues/new/choose)_ exists for the commit (or write one if it does not exist.) This does not need to be a one-to-one relationship; multiple commits can be tied to a single bug report or feature request, so long as it is written clearly and comprehensively (meaning all commits are accounted for in detail.) We'd prefer writting many tickets to writing a single master ticket, though.
3. Write your commit message. Check the _Commit Style Guide_ for details
4. Submit! :+1:

### Pull requests

Do this once you have a collection of closely related commits and you're ready to merge them with everyone else's changes. Try to keep the number of commits small - no more than five or so at a time is prefered.

1. When you submit a pull request to the _master_ branch ...
    1. Title your request based on the overall changes being made (if you are having difficulty deciding a name, it may be a sign that the commits aren't cohesive enough) 
    2. Use the description to summarize the changes being made and their purpose
2. Assign all available contributors as _reviewers_
3. Link all relevant bug reports and feature requests to the pull request
4. Wait for approval by all reviewers (you can expect a response within 48 hours)
5. Discuss changes if a reviewer does not approve the pull request
6. Once all reviewers have approved the request, you may then _merge the branch_ (If you are unable to do so, please request one of your fellow contributors to do so on your behalf)
7. _Delete your branch_, then create a new branch based on the now-updated _master_ branch

## Bug Reporting and Feature Requests

Use the templates provided to detail the bug or feature. Make sure the bug or feature being submitted hasn't already been submitted in the past by checking all _closed_ issues in the database. Also, when submitting a bug report, try to label the bug with the type of issue being reported (any of the red labels available)

If you are planning to implement a fix or new feature, make sure to assign the associated issue to yourself; this signals to other contributors that the ticket is being handled and prevents changes from clashing in the future.

If you are submitting a feature request, please be patient and allow at least one of your fellow contributors to give feedback on the request before starting a pull request. This ensures that at least one person on the team is aware of the incoming change, and will be ready to review it when the time comes. And if you see a feature request in need of review, please give feedback!

## Commit Style Guide

We follow the conventions listed in [this article.](https://chris.beams.io/posts/git-commit/) In summary:

> 1. _Separate subject from body with a blank line_
> 2. _Limit the subject line to 50 characters_
> 3. _Capitalize the subject line_
> 4. _Do not end the subject line with a period_
> 5. _Use the imperative mood in the subject line_
> 6. _Wrap the body at 72 characters_
> 7. _Use the body to explain what and why vs. how_

## Coding Conventions

We try to maintain our GameMaker Language code using these guidelines. Some of these can also be read [here.](https://www.yoyogames.com/blog/63/best-practices-when-coding-in-gamemaker-studio-2) If there's a block of code you need to change that doesn't already meet these standards, feel free to update it!

* Use `snake_case` for variable names; use `camelCase` or `PascalCase` for resource names (sprites, backgrounds, objects, etc.)

* GML is very lax when it comes to certain conventions, such as ending lines with `;` or wrapping expressions in parenthesis, but do try to meet those conventions anyways as it helps your fellow contributors parse your code faster

```gml
// NO
if n > 100 n++

// YES
if (n > 100) n++;
```

* There are human-readable equivalents to some common expression operators. Prefer: `and` to `&&`; `or` to `||`; `xor` to `^^`; and `not` to `!` (unless it is a bitwise expression, in which case `!` becomes more readable)

```gml
// NO
result = (a && b) || !(c ^^ d);

// YES
result = ((a and b) or not (c xor d));
```

* Consider breaking a code block down into smaller scripts or functions instead of using a `#region`.

* Make liberal use of local variables and accessors! :muscle:

* If you need to create a surface, prefer creating it once in a create event, then re-creating it at the _last possible moment_ (ie. in the draw event before targetting or rendering it) if it no longer exists.

* If resources need to be cleaned up when an object is destroyed, prefer using the Clean Up event for that purpose.

## Questions?

Submit a _[Question and Answer](https://github.com/VectorSatyr/SonicTimeTwisted/issues/new/choose)_ form, and a contributor will try to get back to you as soon as possible. Thanks!
