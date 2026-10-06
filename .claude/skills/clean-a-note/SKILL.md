---
name: clean-a-note
description: Turn a messy note into a clean one with decisions, actions, and follow-ups. Use when given meeting scrawl, a transcript, or a brain dump to tidy.
---

# Clean a Note

Use this when I hand you a messy note: meeting scrawl, a voice-memo transcript,
a brain dump. Give me back something short and usable.

## Steps
1. Read the whole note before you write anything. Find what actually matters.
2. Pull out three things, in this order:
   - **Decisions:** what was settled.
   - **Actions:** what needs doing, each with an owner. If the owner is unclear,
     write [ADD: owner].
   - **Follow-ups:** anything I need to chase or come back to.
3. Drop the rest. Side chatter, repetition, and throat-clearing do not survive.
4. Keep it short. A clean note is shorter than the mess it came from.

## Output
- The three sections above, as plain lists. No preamble.
- If the note was too thin to fill a section, say so in one line rather than
  padding it.

## Where it goes
- If the note is a file, save the clean version as a new file beside it, named
  `<name>-clean.md`, where `<name>` is the original's name without its
  extension: `call-notes.md` becomes `call-notes-clean.md`. Then tell me the
  new file's name in one line.
- The original stays exactly as it was, so nothing is lost if the clean
  version misses something.
- If the `-clean.md` file already exists, ask me before replacing it.
- If I pasted the note into the chat, give the clean version back in the chat.
  Save a file only if I ask.

## Never
- Never edit, overwrite, rename, or delete the original note.
- Never invent a date, name, decision, or action. If it is not in the note, flag
  it with [ADD: ...].
- No em dashes. No editorialising. You tidy, you do not rewrite my meaning.
