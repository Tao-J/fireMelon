Check-points:

1. Register an account and create a repository (repo) on github.com (or gitcafe.com)

2. Push(upload) something into that repo
	A lot of work and efforts can be engaged to acchieve this, and you may spend hours searching and reading. But it really worth it, I mean it. **Searching** is of great importance, no one teached me about these, the only thing I can do is to consult the search engine when the problem arises.
	Note: you can first use the HTTP(S) method to manage your repo, then try to use the SSH method to manage your repo.

	here's something you can refer to (written by me), but I strongly recommand you just ignore it

```bash
	1.If you want to use SSH (RSA key) login, get hang of it.
	ssh-keygen -C "[email]" -t rsa

2.Set user name
	$git config --global user.name [your name]
	$git config --global user.email [email]

3.Make working directory
	mkdir and cd into it
	NOTE: if you want to manage a project previously hosted online,
			first use $git clone and then use $git init
		and make an alias of the repo name using:
			$git remote add [alias] [repo destination]
	$git init

4.Create your files
	after creating your own files use $git add 
		to add you files into .git

5.Commit
	$git commit -m [message]
	$git push [alias] [branch_name]
		default branch is "master"
	or simplely use $git push
	$git commit -a #auto commit CLI manager
		so $git commit -a -m [messg] is more convenient
	NOTE:
		eg1. you want to add a file to the .git
			$touch [filename]
			$git add [that filename]
		eg2. you want to change abc.c to abcd.c
			not use $mv abc.c abcd.c
			use $git mv abc.c abcd.c instead
6.Manage a branch
	create a new branch $git branch [new branch name]	
	show current branch $git branch
	swithch to a branch $git checkout [branch name]

7.#Merge branches
	#this action will diff anything between certain branches and merge them
	$git checkout [branch where the code will be added to]
	$git merge [branch which will be merged]

#8.Additional notices running git in windows using msysgit
	#the line ending pattern is quite an annoying issue
	#I'm setting core.autocrlf = false
```

3. Know something about markdown, search for a cheatsheet about it. It's really useful sometimes.

4. Learn more about how to use(or write) a __standard__ makefile, it may look like this one, but more refined than this one

```makefile
DEBUG := -g
CC = gcc
CXX = g++
EXECUTABLE = 441
LIBS	=
CFLAG 	= -c -Wall $(DEBUG)
CPPFLAG = $(CFLAG)
LDFLAG = $(LIB)
#LOC	= ./
OBJ 	= 441_1.o 441.o


$(EXECUTABLE): $(OBJ)     
	$(CXX) -o $@ $(OBJ)

.c.o:
	$(CC) ${CFLAG} -c -o $@ $< $(LIBS)

.cpp.o:
	$(CXX) ${CPPFLAG} -c -o $@ $< $(LIBS)

clean:
	@rm *.o
	@rm $(EXECUTABLE)
```


* If your iPhone is iOS 6.1.2 and below, and you are ok with jailbreaking you device, then jailbreak it. Then ssh into it. Try to get gcc and other UNIX utilities in it. (Hint: you may install aptitude first in cydia. Then the `apt-get` command become available.)

* Install vim 7.4 in Windows

* Install cygwin in Windows, and put the path of `bin` in its installation directory into the `PATH` enviroment variable. Thus you may be able to run commands such as `ls` `pwd` in cmd.exe

* Change your avatar at github.com (fan qiang is required when accessing some web sites)

Good luck, and best wishes.~
