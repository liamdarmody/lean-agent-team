# The Lean Agent Team

A few AI agents that know your business. Three agents, two skills, and the
operating rules that tie them together. Open the folder and you have a working
team in about ten minutes.

The idea is simple. Most AI underdelivers because it knows nothing about your
business. This is a few agents that fit you, not fifty you will never use,
trained on your real work from the first session. Start small, add more only
when a real need shows up.

## What this is

A folder of ordinary Claude Code agents and skills. Nothing here is a plugin or
a special format: each agent is a Markdown file with frontmatter under
`.claude/agents/`, each skill is a folder with a `SKILL.md` under
`.claude/skills/`, and `CLAUDE.md` holds the rules every agent reads first. Any
tool that understands that layout can use it. Rundock reads it directly.

## The team

Three agents, one job each, and an orchestrator on top.

- **Cos, Chief of Staff** (`chief-of-staff`). The orchestrator. You talk to Cos
  first. Cos works out what needs doing and routes it to the right specialist.
- **Bea, Executive Assistant** (`executive-assistant`). Reports to Cos. Cleans
  notes, builds lists, drafts routine messages, keeps things tidy.
- **Cleo, Content Lead** (`content-lead`). Reports to Cos. Drafts posts,
  emails, and pages in your voice. Carries coach, consultant, and agency
  presets; you keep one.

Two skills any agent can call:

- **Clean a Note** (`clean-a-note`). Turn meeting scrawl, a transcript, or a
  brain dump into decisions, actions, and follow-ups.
- **Draft a Post** (`draft-a-post`). Turn a rough idea into a short post in
  your voice, ready to refine.

And one routine, on Bea:

- **Tidy yesterday's notes**, every day at 08:00. Runs Clean a Note over
  anything you captured yesterday that is still messy, and stops without
  changing anything if there is nothing to tidy.

It arrives switched on, but it waits for you: before its first unattended run,
open Routines and approve what it does with **Review and resume**. Rundock names
the routine and its schedule on the install card before you agree, and you can
turn it off or delete it from Routines afterwards. Note that the
routine is a Rundock idea: the same agent file works in plain Claude Code,
where the routine simply never runs.

The shape is deliberate. Cos exists so you brief one agent, not three. Cleo is
the one that makes. Bea is the one that buys back your time: most of the hours
you lose go to admin, not creation, so point your worst weekly time sink at
Bea first. And the safety rule (agents draft, a human sends) is the one to keep
no matter what else you change.

## Two ways to use it

### Open it as a workspace

The whole setup, context files and prompts included. Best for a fresh start.

1. Clone or download this folder.
2. Open it in Rundock (or any coding agent that reads `.claude/`) as a
   workspace.
3. Run the make-it-yours prompt (`prompts/make-it-yours.md`). One of your
   agents interviews you for a few minutes and fills in your business details,
   so the team is trained on your work, not a template.
4. Get your first win (`prompts/first-win.md`). Turn one idea into a post, or
   hand the EA a messy note and get it back clean.

### Add it to a workspace you already have

The team beside what you already run in Rundock.

1. In Rundock, open **Settings, Packages**.
2. Paste this repository's link into **Add a package**.
3. Rundock finds the three agents, two skills and one routine, and shows you
   what it would add. Nothing installs until you say yes.

If your workspace already has something at the same name, such as your own
`chief-of-staff` agent, Rundock lists it as already there and keeps yours
unless you choose to replace it. If you already have a lead agent under
another name, it offers to put the team under yours rather than add a second
lead. Once added, the agents and skills are your files: edit them like
anything else in your workspace.

This route brings the agents, the skills and the routine. `CLAUDE.md`,
`context/` and `prompts/` stay here: copy them in by hand if you want the
first-run interview and the context files the agents read first.

Pasting the link installs the latest release. When a new release is tagged,
Rundock offers it from the team's card on the Packages page, and it keeps
anything you have edited.

## What is inside

- **CLAUDE.md:** the operating rules your agents follow. It points every agent
  at your context files before they act. That one instruction is the whole
  "trained on your business" mechanic: agents do not remember between
  sessions, so this makes them load your context every time instead of
  guessing from a blank slate.
- **.claude/agents/:** the three agents above.
- **.claude/skills/:** the two skills above, one folder each.
- **context/:** `company.md`, `person.md`, and `voice.md`, the files the
  make-it-yours prompt fills in. The prompt can also add a `people/` file for
  a key client or teammate on demand, so nothing empty ships.
- **prompts/:** `make-it-yours.md` to personalise the team, `first-win.md` to
  get one real output today.

## How this compounds

The team is worth more in month three than on day one, if you keep it fed.

- **Fifteen minutes a week.** Open the context files and ask three questions:
  what is stale, what is missing, what changed. Fix it on the spot.
- **Corrections stick.** When an agent gets your voice or a fact wrong, add the
  correction to `context/voice.md`. Then it is right for every agent, every
  session.
- **Skill or agent?** Same output three times is a skill: write it down once in
  `.claude/skills/` and stop re-explaining it. Same conversation pattern, with
  judgement and back-and-forth, is an agent. Reach for a skill before an agent.
- **Your context grows with you.** Add a `people/` file when a client matters
  enough to brief the team on, a new skill when you catch yourself repeating a
  brief. The folder should grow because your work did, not because more felt
  better. The lean part is the point.

## Licence

MIT. See `LICENSE`.
