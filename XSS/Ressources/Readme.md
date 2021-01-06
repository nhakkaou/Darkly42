# How I found it

we Use a script in the coment in feedback
and we can get the flag by XXE by
`<somexml><message>&xee</message></somexml>`

### Solution

You have to take everything sanitize filter_var the form returns.
