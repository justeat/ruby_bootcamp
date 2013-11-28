# 5: Refactor more

## You can create tasks programmatically

* I've generated the tasks in a loop
  * `%w` is shorthand for "array of strings"
  * `%i` is shorthand for "array of symbols", but only works in ruby 2+
* I've extracted the duplicate code to a class in a separate file.

There are no differences between this and #4, functionally, but we've added a description to each generated task.

```shell
rake -T
```

Should see:

```
rake clean    # Remove any temporary products
rake clobber  # Remove any generated file
rake lowest   # Build lowest.txt
rake middle   # Build middle.txt
rake top      # Build top.txt
```
