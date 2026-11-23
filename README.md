# WebPickr test data

The numbers behind the hands-on tests published on [WebPickr](https://webpickr.com/), in plain CSV so you can check them, sort them or use them in your own write-up.

All tests were run by me, Dolon Bepari, from my home connection in Dhaka, Bangladesh, in November 2026.

## What's here

| Folder | What it holds | Full write-up |
| --- | --- | --- |
| `cache-plugins/` | 10 WordPress cache setups tested one at a time on the same page of the same server: TTFB, PageSpeed (mobile), page weight and price; plus what 7 of them left behind after removal | [Best WordPress Cache Plugins (2026): 10 Tested on One Server (7 Free, 3 Paid)](https://webpickr.com/best-wordpress-cache-plugin/) |
| `vps-ping/` | 10 ping results from Dhaka (7 cities, 4 providers: Vultr, Hetzner, DigitalOcean, YottaSrc) | [VPS Bangladesh: Which Server Location Is Fastest? 6 Cities Tested](https://webpickr.com/vps-bangladesh/) |

## Cache plugin test: how it was measured

- **Server:** a small VPS in Hong Kong running aaPanel with Nginx (no LiteSpeed, no Apache).
- **Page:** one article page on a test site (noindex), WordPress 7.1.4, PHP 8.5, Kadence theme, Cloudflare proxied.
- **TTFB:** curl from the Windows Command Prompt, 5 requests in a row (`cache-plugins/ttfb.cmd`). Session A dropped the first request as a warm-up and reports the median of the other 4. Sessions B1 and B2 report the median of all 5. `sessions.csv` lists which plugin was in which session.
- **PageSpeed:** PageSpeed Insights (Lighthouse 13.6), mobile, 3 runs, middle score. Where only 1 or 2 runs exist, the `pagespeed_note` column says so.
- **Page weight:** Chrome DevTools Network summary in an incognito window.
- **Cache proof:** response headers from a normal GET request (not HEAD), checked twice.
- Each session started from a fresh baseline with no cache plugin. Baselines are in `sessions.csv` (median TTFB 0.615 to 0.759 s, 33 requests, 413 kB).
- `leftovers.csv` covers the 7 plugins I checked after removal; I kept no removal notes for Jetpack Boost, WP-Optimize or NitroPack.

Full method: [How I test cache plugins](https://webpickr.com/how-we-test-cache-plugins/).

## Ping test: how it was measured

The six Vultr rows: the same 1 GB plan with a clean Ubuntu 22.04 install in each city, pinged 10 times with `ping -n 10` from the Windows Command Prompt on my Dhaka home connection on 14 November 2026, with no packet loss (`vps-ping/dhaka-ping.cmd`). The Hetzner, DigitalOcean and YottaSrc rows come from each provider's own review test day, and those reviews don't name the exact ping command, so treat them as less directly comparable.

## Caveats

- These are the summary numbers as published in the reviews, not per-request logs.
- One server, one test page, one home connection. Your numbers on a different host, page or network will differ.
- Most TTFB here is network distance (Dhaka to Hong Kong). It is useful for comparing plugins with each other, not as an absolute speed for your site.
- Ping is from one afternoon per provider. Routes change, and evening numbers can be higher.
- Prices are list prices seen in November 2026 for 1 site (unless the price column says otherwise) and change often.

## Using the data

Free to use under [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/). If you use it, please credit "WebPickr (webpickr.com)" and link to the write-up the numbers came from.

Found a mistake? Open an issue or email contact@webpickr.com.
