Create a Pull Request using the GH CLI.

It should use the current branch, and assume that the remote is already setup.

Extract information from the current branch name to autofill as much as possible. An ideal format for the title is `<Type>: <TicketCode> - <Title>`
For example, a branch of `core/ent-123-some-description` could start with "Core: ENT-123 - <>" With a title gleaned from the content of the changes

Keep the PR description concise, ideally explain the reasoning. If the reasoning behind the change isn't an obvious bug fix or improvement, ask me for the reasoning. Do not put any reference about AI generation.

The final command should open a web browser to the autofilled PR creation page, without automatically creating the PR.

