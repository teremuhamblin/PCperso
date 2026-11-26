#!/usr/bin/env python3
"""Check relative links in Markdown files without third-party dependencies."""

from __future__ import annotations

import re
import sys
from pathlib import Path
from urllib.parse import unquote, urlsplit

ROOT = Path(__file__).resolve().parents[1]
LINK_RE = re.compile(r"!?\[[^\]]*\]\(([^)]+)\)")
HTML_RE = re.compile(r"(?:href|src)\s*=\s*[\"']([^\"']+)[\"']", re.IGNORECASE)
CODE_RE = re.compile(r"(`{3,}|~{3,}).*?\n.*?\n\1", re.DOTALL)


def markdown_files() -> list[Path]:
    return sorted(
        path for path in ROOT.rglob("*.md")
        if ".git" not in path.parts and not any(part.startswith("build") for part in path.parts)
    )


def targets(text: str):
    text = CODE_RE.sub("", text)
    for match in LINK_RE.finditer(text):
        raw = match.group(1).strip()
        if raw.startswith("<") and ">" in raw:
            raw = raw[1:raw.index(">")]
        else:
            raw = raw.split(maxsplit=1)[0]
        yield raw
    for match in HTML_RE.finditer(text):
        yield match.group(1).strip()


def main() -> int:
    errors: list[str] = []
    for markdown in markdown_files():
        try:
            content = markdown.read_text(encoding="utf-8")
        except UnicodeDecodeError:
            errors.append(f"{markdown.relative_to(ROOT)}: file is not valid UTF-8")
            continue
        for target in targets(content):
            parsed = urlsplit(target)
            if not parsed.scheme and not parsed.netloc and parsed.path:
                destination = (markdown.parent / unquote(parsed.path)).resolve()
                try:
                    destination.relative_to(ROOT)
                except ValueError:
                    errors.append(f"{markdown.relative_to(ROOT)}: link escapes repository: {target}")
                    continue
                if not destination.exists():
                    line = content[: content.find(target)].count("\n") + 1
                    errors.append(f"{markdown.relative_to(ROOT)}:{line}: missing local target: {target}")
    if errors:
        print("Markdown link check failed:")
        print("\n".join(f"- {error}" for error in errors))
        return 1
    print(f"Markdown link check passed ({len(markdown_files())} Markdown files scanned).")
    return 0


if __name__ == "__main__":
    sys.exit(main())
