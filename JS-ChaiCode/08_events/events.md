# day1
- all the events of the website are always run sequencially. (there are some exceptions)

There are 5 approach to add the events.
- 1 : direct on the attribute
- 2 : using `onclick` function direct
- 3 : using `addEventListener`
- 4 : by jQuery
- 5 : using `attachEvent`

### Event Propagation (true, false) {Capturing/Bubbling}
false : event-pubbling  --> bottom to top movement (1st inside element runs then outside runs)
true : event-capturing  --> top to bottom movement (vice-versa of false)



# Async
- settimeout function go as call to webAPI --> taskQueue --> finally return to call-stack
- thats why : even timeout=0, it takes some time | it runs after next item

# fetch
- just a expanded version of task-queue. 
- It have higher priority than the existing task-queue