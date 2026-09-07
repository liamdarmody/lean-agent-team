# Make it yours

This is the prompt that trains the team on your business. Run it once, in the
workspace you just opened in Rundock. An agent interviews you for a few minutes,
then writes your three context files. You never face a blank template.

## How to run it

1. Open this folder in Rundock as a workspace.
2. Start a chat with any agent (the Chief of Staff is a good default).
3. Paste the prompt below.
4. Answer the questions, one at a time. It takes a few minutes.

When it finishes, your `context/company.md`, `context/person.md`, and
`context/voice.md` are filled in with your real business, the Content
Lead is set to your preset, you have one worked "sounds like me" example, and the
agents carry whatever names you chose. From then on, every agent reads the
context before acting. That is the whole "trained on your business" mechanic.

If you named a key client or teammate, the agent will offer to create a short
`context/people/<name>.md` for them. Say yes and it adds one file per person.
Say no and nothing is created. The folder stays lean either way.

---

## The prompt

```
You are helping me train a small team of AI agents on my business. Run an
interview, not a form. Ask the questions below ONE AT A TIME. Wait for my
answer before the next question. Keep your own words short. If an answer is
vague, ask one follow-up, then move on. Do not lecture.

Ask these eight:

1. In one or two sentences, what does your business do, and for whom?
2. Who is the one customer you most want more of? Describe them as a person:
   their role, their situation, what they are trying to fix.
3. What do you sell, and roughly what does it cost? List your main one or two
   offers.
4. If a stranger read your writing, what three words should they feel? Give me
   three adjectives for your voice.
5. Who are the one or two people the agents should know about? For each: name,
   role, and one line on how they work or what they care about.
6. What is the single task you waste the most time on each week? Be specific.
7. Where does your work live? Name the tools and folders the agents should
   assume (for example: Google Docs, a Notion calendar, a folder of past posts).
8. What should the agents never do without checking with you first?

When the interview is done, write these three files and show me each one:

- context/company.md: what the business is, the ICP from Q2, and the offers
  from Q3.
- context/person.md: me as the owner, from how I described myself and how I work.
- context/voice.md: the three voice words from Q4 expanded into a short do/don't.

For Q5 (the one or two people the agents should know about), do NOT create a
people folder by default. Instead, after writing the three files, offer it:
"You mentioned [name]. Want me to create context/people/[name].md so the agents
know them properly? I will only do it if you say yes." If I say yes, create
context/people/<name>.md with their name, role, and the one line I gave you, and
nothing more. One file per person, only the people I actually named. If I say no,
leave it. Keep the workspace lean: the people pattern is created on demand, not
shipped empty.

Then finish the job. Do these four things, one at a time:

A. PICK THE CONTENT LEAD PRESET.
Ask me one question: "Which fits you best for the writing: coach, consultant,
agency, or something else?" In .claude/agents/content-lead.md there is an
"About you" block with three presets (A coach, B consultant, C agency), each
marked with a comment. Keep the one I pick, delete the other two, and delete
the "(pick one preset, delete the rest)" instruction and the three preset
comment markers. If I say "something else", keep the closest preset and edit its
three lines to match what I told you. Leave one clean paragraph, no scaffolding.

B. FILL THE PLACEHOLDERS.
Replace every square-bracket placeholder and every "Example:" filling in the
three context files with my real answers. No bracketed placeholder should
survive unless I genuinely did not give you the answer, in which case leave a
clear [ADD: ...] note. Delete the leftover "Example:" lines once you have my
real version.

C. WRITE ONE "SOUNDS LIKE ME" EXAMPLE.
In context/voice.md there is a "Sounds like me" section. Fill it with
ONE worked pair, drawn from my business and my three voice words:
- A flat, generic line of the kind anyone in my field could have posted.
- The same point rewritten in my voice, using my three words.
Keep it short, two lines. This is the fastest way for me to feel the difference,
so make the contrast obvious. Then delete the placeholder instruction above the
pair.

D. OFFER TO RENAME THE TEAM.
Ask: "The agents are called Cos (Chief of Staff), Bea (EA), and Cleo (Content
Lead). Keep these names, or name them yourself?" If I want my own names, update
the displayName in each agent's frontmatter and the opening "You are <name>"
line in each agent body. Change nothing else. If I keep them, do nothing.

Finally, tidy up. Remove any remaining instruction comments or scaffolding you
have now acted on, across the context files and the Content Lead agent, so I am
left with a clean workspace, not a half-filled template. Do not touch comments
you have not acted on.

Use only what I told you. Do not invent facts. Where I was thin, leave a clear
[ADD: ...] note rather than guessing. Keep every file short. The point is a few
true lines the agents can rely on, not a brochure.
```

---

## Notes
- Eight questions is the ceiling, not the floor. Question 6 (your worst time
  sink) feeds your first win, so it earns its place.
- The "leave [ADD: ...] notes, do not invent" rule is the anti-bloat principle
  applied to the interview itself. A thin true file beats a padded fake one.
- After the interview the agent finishes the setup for you: picks your writing
  preset, fills the files, writes one voice example, and offers to rename the
  team. You end with a clean workspace, not a half-filled template.
- Done? Go to `first-win.md` and get one real output in your first session.
