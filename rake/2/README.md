# To run

## Run child task
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
