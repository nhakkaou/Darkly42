# How I found it

in page /?page=e43ad1fdc54babe674da7c7b8f0127bde61de3fbe01def7d00f151c2fcca6d1c
they said change the user agent and refere from nsa.gov to our page we can do it with extention or by using curl

```
curl -A "ft_bornToSec" --referer https://www.nsa.gov/ http://SITE/\?page\=e43ad1fdc54babe674da7c7b8f0127bde61de3fbe01def7d00f151c2fcca6d1c
```

### Solution

to solve this problem we need to add a token in params
