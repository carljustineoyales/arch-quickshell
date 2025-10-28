# Git Commit Message Template
#
# This is a template for creating well-formatted and informative commit messages.
# It follows common best practices for clear and consistent commit history.
#
# To use this template, you can configure git with the following command:
#
#   git config --global commit.template COMMIT_MESSAGE_TEMPLATE.md
#
# Lines starting with '#' will be ignored.

# ------------------------------------------------------------------------------
# 1. Subject Line (Type: Scope: Subject - max 72 characters)
# ------------------------------------------------------------------------------
# - Type: (Required) Must be one of the following:
#     feat: A new feature
#     fix: A bug fix
#     docs: Documentation only changes
#     style: Changes that do not affect the meaning of the code (white-space, formatting, missing semicolons, etc)
#     refactor: A code change that neither fixes a bug nor adds a feature
#     perf: A code change that improves performance
#     test: Adding missing tests or correcting existing tests
#     chore: Changes to the build process or auxiliary tools and libraries such as documentation generation
#     build: Changes that affect the build system or external dependencies (example scopes: gulp, broccoli, npm)
#     ci: Changes to our CI configuration files and scripts (example scopes: Travis, Circle, BrowserStack, SauceLabs)
#     revert: Reverts a previous commit
# - Scope: (Optional) A noun describing the section of the codebase affected (e.g., `parser`, `compiler`, `api`, `auth`, `ui`).
# - Subject: (Required) Concise, imperative mood, present tense: "change" not "changed" or "changes".
#   - Capitalize the first letter.
#   - No period at the end.
#   - Keep it concise and short.
#
# Examples:
#   feat(auth): Add user authentication endpoint
#   fix(billing): Correct calculation for subscription renewals
#   docs(readme): Update setup instructions
#   refactor(core): Simplify error handling logic
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# 2. Body (Optional)
# ------------------------------------------------------------------------------
# - Use a blank line between the subject and the body.
# - Explain the "what" and "why" of the change, not the "how".
# - Focus on the problem being solved and the rationale behind the solution.
# - Break paragraphs with blank lines.
#
# Example:
#   The previous implementation had a logic error that caused incorrect
#   billing totals for customers with multiple subscriptions. This change
#   corrects the logic to ensure accurate billing by adjusting the
#   calculation method to properly account for prorated charges.
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# 3. Footer (Optional)
# ------------------------------------------------------------------------------
# - Use a blank line before the footer.
# - Reference issue tracker IDs (e.g., `Fixes #123`, `Closes #456`, `Refs #789`).
# - For breaking changes, start with `BREAKING CHANGE:` followed by a description.
#
# Examples:
#   Fixes #123
#   Closes #456, #789
#
#   BREAKING CHANGE: The `User` model no longer includes the `address` field.
#   This was removed to comply with new privacy regulations.
# ------------------------------------------------------------------------------