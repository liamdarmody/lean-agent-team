"""Prints one version's section of CHANGELOG.md, read from stdin, as release
notes, with each wrapped list item joined onto one line.

usage: git show refs/tags/v1.2.2:CHANGELOG.md | python3 .github/release-notes.py 1.2.2
"""
import sys

version = sys.argv[1]
out, take = [], False
for line in sys.stdin.read().splitlines():
    if line.startswith("## "):
        if take:
            break
        take = line[3:].strip() == version
        continue
    if not take:
        continue
    if line.startswith("Earlier releases"):
        break
    if line.startswith("  ") and out and out[-1].strip():
        out[-1] += " " + line.strip()
    else:
        out.append(line.rstrip())

notes = "\n".join(out).strip()
if not notes:
    sys.exit(f"CHANGELOG.md has no section for {version}")
print(notes)
