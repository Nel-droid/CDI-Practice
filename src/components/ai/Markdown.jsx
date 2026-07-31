// Minimal, safe Markdown renderer for the constrained subset the AI tutor emits:
// bold, italic, inline code, headings, and bullet / numbered lists. It returns
// React elements (never dangerouslySetInnerHTML), so model output can't inject HTML.

// Inline: **bold**, *italic*, `code`. Bold is matched before italic so ** wins.
function renderInline(text, keyBase) {
  const nodes = []
  const regex = /(\*\*[^*]+\*\*|\*[^*\n]+\*|`[^`]+`)/g
  let last = 0
  let m
  let k = 0
  while ((m = regex.exec(text))) {
    if (m.index > last) nodes.push(text.slice(last, m.index))
    const tok = m[0]
    const key = `${keyBase}-${k++}`
    if (tok.startsWith('**')) nodes.push(<strong key={key}>{tok.slice(2, -2)}</strong>)
    else if (tok.startsWith('`')) nodes.push(<code key={key}>{tok.slice(1, -1)}</code>)
    else nodes.push(<em key={key}>{tok.slice(1, -1)}</em>)
    last = m.index + tok.length
  }
  if (last < text.length) nodes.push(text.slice(last))
  return nodes
}

const HEADING = /^\s{0,3}(#{1,6})\s+(.*)$/
const UNORDERED = /^\s*[-*]\s+(.*)$/
const ORDERED = /^\s*\d+\.\s+(.*)$/

export function Markdown({ text }) {
  const lines = String(text ?? '').replace(/\r/g, '').split('\n')
  const blocks = []
  let i = 0

  while (i < lines.length) {
    const line = lines[i]

    if (!line.trim()) { i++; continue }

    const heading = line.match(HEADING)
    if (heading) {
      blocks.push(<p className="md-h" key={`h${i}`}>{renderInline(heading[2], `h${i}`)}</p>)
      i++
      continue
    }

    if (UNORDERED.test(line)) {
      const items = []
      while (i < lines.length && UNORDERED.test(lines[i])) {
        items.push(<li key={`li${i}`}>{renderInline(lines[i].match(UNORDERED)[1], `li${i}`)}</li>)
        i++
      }
      blocks.push(<ul key={`ul${i}`}>{items}</ul>)
      continue
    }

    if (ORDERED.test(line)) {
      const items = []
      while (i < lines.length && ORDERED.test(lines[i])) {
        items.push(<li key={`oli${i}`}>{renderInline(lines[i].match(ORDERED)[1], `oli${i}`)}</li>)
        i++
      }
      blocks.push(<ol key={`ol${i}`}>{items}</ol>)
      continue
    }

    // Paragraph: consecutive plain lines, joined with <br />.
    const para = []
    while (
      i < lines.length &&
      lines[i].trim() &&
      !HEADING.test(lines[i]) &&
      !UNORDERED.test(lines[i]) &&
      !ORDERED.test(lines[i])
    ) {
      para.push(lines[i])
      i++
    }
    blocks.push(
      <p key={`p${i}`}>
        {para.flatMap((ln, j) => {
          const inline = renderInline(ln, `p${i}-${j}`)
          return j < para.length - 1 ? [...inline, <br key={`br${i}-${j}`} />] : inline
        })}
      </p>,
    )
  }

  return <>{blocks}</>
}
