Go Env
======

* inspired by python's virtualenv
* simple way of managing dependencies for a project and installing them locally
* exports the current directory as the gopath

Installation (Homebrew)
-----------------------

* `brew tap jonmorehouse/tap`
* `brew update`
* `brew install go-env`

Installation (Manual)
---------------------

* `git clone github.com/jonmorehouse/go-env` 
* add `pwd`/bin to $PATH

Sample gofile
-------------

```
# grab pipe functionality
labix.org/v2/pipe
```

Use
---

* add all dependencies to gofile 
* bootstrap your environment with: `go-env install`
* `source .goenv` - to export current gopath and other settings
* `go-env destroy` will purge the current environment

Future Ideas
------------

* version packages based upon head/tags for git projects
  * ex: github.com/jonmorehouse/go-package#tag=v1.01 





