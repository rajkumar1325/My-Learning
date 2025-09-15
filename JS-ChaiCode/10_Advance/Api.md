HOW WE HANDLE API REQUEST.
- now we use fetch()
- previously we use `XML-HtmlRequest`
- `XML-HtmlRequest` : used heavily in AJAX(asyn js and XML) programming
- xml sends AJAX requests

# Promices

- It have 3 states:
- - pending: initial state, neither fullfilled nor rejected
- - fullfilled : operation was completed successfully
- - rejected : operation was failed

#### it have 2 parts: consume/create
- It also receive a call-back fn with 2 arg `resolve` or `reject`


##  promice.then().catch().finally     --> resolve=then() , reject=catch() , all-time-run=finally 
- then()/ catch() : both contains a call-back function

### promise can also handled by `Async` and `wait` rather than `then` or `catch`

## Async-Await
- wait for the work to do --> if it happens it success else it gives the error at that point of time
- used eg: if DB connection didnt happens --> dont proceed further
- its data must be wrapped in a try-catch to avoid potential error