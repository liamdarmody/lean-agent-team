#!/bin/sh
# Builds the workspace zip attached to every release: each tracked file at
# <tag> except .github, under one top folder, lean-agent-team/, so the
# folder keeps the same name from release to release.
#
# The release asset is named lean-agent-team-v1.zip for every v1.x release,
# because the download page and the emails that link to it promise that file
# name. A v2 tag stops here until that name and the download link that points
# at it are changed together.
#
# usage: sh .github/build-zip.sh <tag> <output.zip>   (run from the repo root)
set -eu

tag="$1"
out="$2"

if ! printf '%s' "$tag" | grep -Eq '^v[0-9][0-9A-Za-z.+-]*$'; then
  echo "not a release tag: $tag" >&2
  exit 1
fi
case "$tag" in
  v1.*) ;;
  *) echo "$tag is not a v1.x release, but the zip is named lean-agent-team-v1.zip: choose the new name and update the download link first" >&2; exit 1 ;;
esac

# The tag and the package must name the same version.
if ! git cat-file -e "refs/tags/$tag:rundock.json" 2> /dev/null; then
  echo "no rundock.json at $tag" >&2
  exit 1
fi
version=$(git show "refs/tags/$tag:rundock.json" | python3 -c 'import json, sys; print(json.load(sys.stdin)["version"])')
if [ "v$version" != "$tag" ]; then
  echo "rundock.json at $tag says version $version" >&2
  exit 1
fi

rm -f "$out"
git archive --format=zip --prefix=lean-agent-team/ -o "$out" "refs/tags/$tag" -- . ':(exclude).github'

# The whole workspace is there, and nothing from .github shipped.
listing=$(unzip -Z1 "$out")
for required in CLAUDE.md README.md LICENSE rundock.json .gitignore .claude/agents/ .claude/skills/ context/ prompts/; do
  if ! printf '%s\n' "$listing" | grep -qxF "lean-agent-team/$required"; then
    echo "missing from the zip: $required" >&2
    exit 1
  fi
done
if printf '%s\n' "$listing" | grep -q '^lean-agent-team/\.github'; then
  echo ".github is in the zip" >&2
  exit 1
fi

echo "built $out for $tag: $(printf '%s\n' "$listing" | grep -vc '/$') files"
