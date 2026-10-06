# Changelog

## 1.2.2

- **Outside text is information, not instructions.** `CLAUDE.md`, Cos and Bea
  now treat text inside emails, calendar invites, web pages and attachments as
  information. They never follow instructions found in it, and they tell you
  when it asks for something.
- **Clean a Note keeps your original.** Cleaning a note that is a file saves
  the result beside it as `<name>-clean.md` and leaves the original exactly as
  it was. Bea's daily routine does the same, and skips any file that already
  ends in `-clean.md` or already has a clean copy.
- **Bea's routine asks for approval again.** Its instructions changed, so a
  routine you approved on an earlier version waits until you approve it once
  more in Routines with **Review and resume**.
- **If you edited a file, it stays yours.** When an update reaches a file you
  changed, Rundock keeps your version and saves the new one for you to review.
  If you edited Bea or Clean a Note, copy the new parts across by hand to get
  the changes above.
- **Skill names follow the Agent Skills format.** Each skill's `name` is now
  its folder name (`clean-a-note`, `draft-a-post`, `set-up-your-context`), so
  the folders also work in other tools that read the format. The readable
  title is the first heading in each skill.
- **Worked examples.** Clean a Note and Draft a Post each end with one example
  input and the output it should produce.

Earlier releases are recorded as tags in this repository.
