# Incremental builds, cleanup

Each file task builds a file of that name, with the filename as the file's contents.

## Ensure clean state
```shell
rake clean
```
Should see
```
Failed to remove top.txt: No such file or directory - top.txt
Failed to remove middle.txt: No such file or directory - middle.txt
Failed to remove lowest.txt: No such file or directory - lowest.txt
```
because none of the outputs should exist yet.

## Build lowest.txt
```shell
rake lowest.txt
```
Should result in the `lowest.txt` file.

**Notice** - we can call rake against filenames as well as tasks.

## Build top.txt
```shell
rake top.txt --trace
```
Should result in this output, plus files.

```
** Invoke top.txt (first_time)
** Invoke middle.txt (first_time)
** Invoke lowest.txt (first_time, not_needed)
** Execute middle.txt
** Execute top.txt
```

**Notice** - it didn't need to build `lowest.txt` because it found that was up-to-date.

## touch middle and rebuild top.txt

```shell
notepad middle.txt
# enter anything and save - updates file
rake top.txt --trace
```

Should see this output, and all files.  `top.txt` should have been rebuilt.

```
** Invoke top.txt (first_time)
** Invoke middle.txt (first_time, not_needed)
** Invoke lowest.txt (first_time, not_needed)
** Execute top.txt
```

**Note:** Dependencies are evaluated based on file modification timestamps.

* `middle.txt` is not rebuilt, because it exists (even though it's newer with different content)
* `top.txt` is rebuilt because its `middle.txt` dependency had changed.

**Note:** This is different from the default `rake` behaviour - the default wouldn't have rebuilt `top.txt`.  See [makerakeworkwell](https://github.com/seattlerb/makerakeworkwell).

## Cleanup
```shell
rake clean --trace
```
Should result in
```
** Invoke clean (first_time)
** Execute clean
```
and all txt files should be gone.
