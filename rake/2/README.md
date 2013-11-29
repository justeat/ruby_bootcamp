# 2: Simple dependencies, tracing

## Run the named 'child' task
```shell
rake child
```

You should see `child`.

## Run task with dependencies, with trace on
```shell
rake parent --trace
```

You should see
```
** Invoke parent (first_time)
** Invoke child (first_time)
** Execute child
child
** Execute parent
parent
```

## Dry runs / What if
```shell
rake parent --trace --dry-run
```

You should see:
```
** Invoke parent (first_time)
** Invoke child (first_time)
** Execute (dry run) child
** Execute (dry run) parent
```
(that is, no actual executions)

## Repeated runs
```shell
rake parent --trace
rake parent --trace
```

You should see **x2** of:
```
** Invoke parent (first_time)
** Invoke child (first_time)
** Execute child
child
** Execute parent
parent
```

... because `task` will always run, there is no up-to-date check.
