# 4: Refactor

## It's important to keep tasks simple.

(This is obviously a contrived example!)

* I've extracted the duplicate code to a method.
* I've added nicer-named tasks than filenames.
* I've used a [glob](http://rake.rubyforge.org/classes/Rake/FileList.html#M000150) for the `CLEAN` [FileList](http://rake.rubyforge.org/classes/Rake/FileList.html).

## Call rake against a file that's not named Rakefile.rb

```shell
rake -f Better.rb --trace top
```

Should see:
```
** Invoke top (first_time)
** Invoke top.txt (first_time)
** Invoke middle.txt (first_time)
** Invoke lowest.txt (first_time)
** Execute lowest.txt
** Execute middle.txt
** Execute top.txt
** Execute top
```

The files are still where the dependencies are, not the alias tasks.

## Clean up
```
rake -f Better.rb --trace clean
```

Should see
```
** Invoke clean (first_time)
** Execute clean
```
and all *.txt files should be gone.
