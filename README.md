# scripts

Old shell scripts I wrote for server and WordPress maintenance, collected in one place.
Each folder keeps the full commit history of the gist or repo it came from, with the
original dates.

| Folder | What it does | First written | Came from |
|---|---|---|---|
| `scan-script` | Looks for webshells and obfuscated PHP in a hosting account (eval/base64 variants, PHP files in uploads, PHP disguised as images, known shell signatures) and writes the hits to `scanResults/` | 2016 | gist 0037851a |
| `md5-wordpress-check` | Downloads the same WordPress version as the site, compares md5 sums of the core files and lists the ones that were changed or added | 2017 | gist bcb840f5 |
| `backup-rsync` | Snapshot backup to a remote host with `rsync --link-dest`, one folder per run named by date and hour, log copied next to the backup | 2016 | repo backupRsyncScript |
| `average-ttfb` | Runs `curl` N times against a URL and prints the average connect time, TTFB and total time | 2021 | gist 4b7455ce |

Usage for the TTFB script: `./avarageTTFB.sh https://example.com 10`

`backup-rsync/LICENSE` (GPL-3.0) came with the original backupRsyncScript repo and covers that script.
