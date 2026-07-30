/**
 * Prepare a user-picked image for use as an avatar: centre-crop to a square and
 * shrink to a small side length, so what we upload is a tidy ~15-30 KB JPEG
 * rather than a multi-megabyte phone photo.
 *
 * @param {File} file - the image the candidate chose
 * @param {number} size - output side length in px
 * @returns {Promise<Blob>} a square JPEG blob
 */
export async function resizeToSquare(file, size = 256) {
  const dataUrl = await readAsDataURL(file)
  const img = await loadImage(dataUrl)

  const canvas = document.createElement('canvas')
  canvas.width = size
  canvas.height = size
  const ctx = canvas.getContext('2d')

  // Centre-crop to the largest square that fits, then scale into the canvas.
  const side = Math.min(img.width, img.height)
  const sx = (img.width - side) / 2
  const sy = (img.height - side) / 2
  ctx.drawImage(img, sx, sy, side, side, 0, 0, size, size)

  const blob = await new Promise(resolve => canvas.toBlob(resolve, 'image/jpeg', 0.85))
  if (!blob) throw new Error('Could not process that image.')
  return blob
}

function readAsDataURL(file) {
  return new Promise((resolve, reject) => {
    const reader = new FileReader()
    reader.onload = () => resolve(reader.result)
    reader.onerror = () => reject(new Error('Could not read that file.'))
    reader.readAsDataURL(file)
  })
}

function loadImage(src) {
  return new Promise((resolve, reject) => {
    const img = new Image()
    img.onload = () => resolve(img)
    img.onerror = () => reject(new Error('That file is not a readable image.'))
    img.src = src
  })
}
