// Content images (listening maps, writing Task 1 charts) are served directly
// from the S3 bucket by absolute URL — same bucket/base as the header logo —
// instead of Supabase Storage signed URLs. The objects live under assets/.
const S3_ASSETS = 'https://cdi-practice-frontend.s3.us-east-1.amazonaws.com/assets'

// Keys can contain spaces (e.g. "Cambridge 11 Test 1 map.png"); encode each
// path segment but keep folder slashes.
const enc = key => String(key).split('/').map(encodeURIComponent).join('/')

export const listeningMapUrl = path => `${S3_ASSETS}/listening-maps/${enc(path)}`
export const writingChartUrl = path => `${S3_ASSETS}/writing-charts/${enc(path)}`
