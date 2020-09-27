# Summary

Simple parallel crawler. Takes urls as input and display their `title` tags.

# Install

- `git clone https://github.com/DenisKem/crawler_on_rails.git`
- `cd crawler_on_rails`
- `docker-compose up`

# In action

- Open in browser (http://localhost:3000)
- Upload test file (it's demo_links.txt, you can find it in this repo)
- This file contains demo links to demo container (see `docker-compose.yml`)
- Set `threads_count` option to `1`
- Click `Crawl`
- Please wait around 10 sec.
- See result table

## Threads_count option
- Click `Back` button
- Specify `4` as `threads_count`
- Click `Crawl`
- Waiting time should be 4 sec.
