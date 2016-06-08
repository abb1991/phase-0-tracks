1) What are some common HTTP status codes?
HTTP codes classes are identified by their first digit, with their classes as follows:

1xx: Informational.
2xx: Success.
3xx: Redirection.
4xx: Client Error.
5xx: Server Error.

others:

200 OK
300 Multiple Choices
301 Moved Permanently
302 Found
304 Not Modified
307 Temporary Redirect
400 Bad Request
401 Unauthorized
403 Forbidden
404 Not Found
410 Gone
500 Internal Server Error
501 Not Implemented
503 Service Unavailable
550 Permission denied


2) What is the difference between a GET request and a POST request? When might each be used?

GET - Requests data from a specified resource
POST - Submits data to be processed to a specified resource

GET requests are cached whereas POST requests are not. Essentially, GET requests seem to deal with transfering data, while POST requests are better suited with the anonymous and ephemeral.


3) Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

A cookies is a locally stored piece of data from a given website. It could be useful in remember user-specific proferences or previous browsing history.