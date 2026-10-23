#!/usr/bin/env bash
# Builds README.md into "Timothy Bangma.docx" and "Timothy Bangma.pdf" next to it.
#
# Dependencies:
#   - pandoc            (apt install pandoc)
#   - uv                (https://docs.astral.sh/uv/) -- runs weasyprint on demand via `uvx`,
#                        so weasyprint needn't be installed from apt
#   - python3           (stdlib only; patches the docx font)
#   - Junicode + Fira Code fonts bundled in ./fonts (SIL OFL). PDF embeds it automatically; for the
#                        docx, install the fonts locally so Word/LibreOffice can render them.
set -euo pipefail

cd "$(dirname "$0")"
DIR=$PWD

SRC="README.md"
OUT="Timothy Bangma"

CSS=$(mktemp --suffix=.css)
trap 'rm -f "$CSS"' EXIT
cat > "$CSS" <<EOF
@font-face { font-family: 'Junicode'; src: url('file://$DIR/fonts/Junicode-Regular.ttf'); }
@font-face { font-family: 'Junicode'; font-weight: bold; src: url('file://$DIR/fonts/Junicode-Bold.ttf'); }
@font-face { font-family: 'Junicode'; font-style: italic; src: url('file://$DIR/fonts/Junicode-Italic.ttf'); }
@font-face { font-family: 'Junicode'; font-weight: bold; font-style: italic; src: url('file://$DIR/fonts/Junicode-BoldItalic.ttf'); }
@font-face { font-family: 'Fira Code'; src: url('file://$DIR/fonts/FiraCode-Regular.ttf'); }
@font-face { font-family: 'Fira Code'; font-weight: bold; src: url('file://$DIR/fonts/FiraCode-Bold.ttf'); }
@page { margin: 1.5cm; }
code, pre { font-family: 'Fira Code', monospace; font-size: 0.85em; }
body { font-family: 'Junicode', serif; font-size: 10pt; line-height: 1.35; }
h1 { font-size: 20pt; margin-bottom: 0.2em; }
h2 { font-size: 13pt; border-bottom: 1px solid #888; margin-top: 1em; }
hr { display: none; }
EOF

REF=$(mktemp --suffix=.docx)
pandoc -o "$REF" --print-default-data-file reference.docx
python3 - "$REF" <<'PY'
import re, sys, zipfile, shutil
path = sys.argv[1]
tmp = path + ".new"
with zipfile.ZipFile(path) as zin, zipfile.ZipFile(tmp, "w", zipfile.ZIP_DEFLATED) as zout:
    for item in zin.infolist():
        data = zin.read(item.filename)
        if item.filename == "word/styles.xml":
            xml = data.decode()
            xml = re.sub(r"<w:rFonts[^>]*/>", '<w:rFonts w:ascii="Junicode" w:hAnsi="Junicode" w:cs="Junicode" w:eastAsia="Junicode"/>', xml)
            xml = xml.replace("<w:rPrDefault><w:rPr>", '<w:rPrDefault><w:rPr><w:rFonts w:ascii="Junicode" w:hAnsi="Junicode" w:cs="Junicode" w:eastAsia="Junicode"/>', 1) if "<w:rFonts" not in xml.split("</w:rPrDefault>")[0] else xml
            def mono(m):
                return m.group(0).replace("Junicode", "Fira Code")
            xml = re.sub(r'<w:style [^>]*w:styleId="(?:VerbatimChar|SourceCode)".*?</w:style>', mono, xml, flags=re.S)
            data = xml.encode()
        zout.writestr(item, data)
shutil.move(tmp, path)
PY
pandoc "$SRC" --reference-doc "$REF" -o "$OUT.docx"
HTML=$(mktemp --suffix=.html)
trap 'rm -f "$CSS" "$HTML" "$REF"' EXIT
pandoc "$SRC" --standalone --metadata pagetitle="Timothy Bangma" --css "$CSS" --embed-resources -o "$HTML"
uvx --quiet weasyprint "$HTML" "$OUT.pdf" 2>/dev/null

echo "Built: $OUT.docx, $OUT.pdf"
