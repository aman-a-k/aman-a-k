#!/usr/bin/env sh
# Writes assets/followers.svg with the current follower count, in the same
# flat-square style as the other badges. Usage: followers-badge.sh <count>
set -eu
count="$1"
label="Followers"
lw=62
vw=$((10 + 7 * ${#count}))
w=$((lw + vw))
cat > assets/followers.svg <<SVG
<svg xmlns="http://www.w3.org/2000/svg" width="$w" height="20" role="img" aria-label="$label: $count"><title>$label: $count</title><g shape-rendering="crispEdges"><rect width="$lw" height="20" fill="#555"/><rect x="$lw" width="$vw" height="20" fill="#5bc0be"/></g><g fill="#fff" text-anchor="middle" font-family="Verdana,Geneva,DejaVu Sans,sans-serif" text-rendering="geometricPrecision" font-size="11"><text x="$((lw / 2))" y="14">$label</text><text x="$((lw + vw / 2))" y="14" fill="#0b132b">$count</text></g></svg>
SVG
