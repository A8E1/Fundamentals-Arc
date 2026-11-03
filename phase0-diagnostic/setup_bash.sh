#!/usr/bin/env bash
set -e
mkdir -p bashcheck/app bashcheck/worker bashcheck/archive/2026-10

cat > bashcheck/app/server.log <<'EOF'
2026-11-01T09:00:01 INFO  request id=101 path=/login status=200
2026-11-01T09:00:03 ERROR request id=102 path=/upload status=500
2026-11-01T09:00:07 WARN  request id=103 path=/search status=429
2026-11-01T09:01:12 ERROR request id=104 path=/upload status=500
2026-11-01T09:02:45 INFO  request id=105 path=/home status=200
EOF

cat > bashcheck/worker/jobs.log <<'EOF'
2026-11-01T09:05:00 INFO  job id=7 path=/jobs/resize status=ok
2026-11-01T09:05:30 ERROR job id=8 path=/jobs/resize status=failed
2026-11-01T09:06:10 ERROR job id=9 path=/jobs/email status=failed
EOF

cat > bashcheck/archive/2026-10/server.log <<'EOF'
2026-10-31T23:58:00 ERROR request id=90 path=/login status=500
2026-10-31T23:59:00 INFO  request id=91 path=/upload status=200
2026-10-31T23:59:30 ERROR request id=92 path=/upload status=503
EOF

cat > bashcheck/notes.txt <<'EOF'
TODO: investigate ERROR spike on /upload
ERROR budget review on Friday
EOF

echo "setup done"