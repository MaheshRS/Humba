# Humba

Humba is a basic bash shell script used to symbolicate iOS crashes. Symbolicating crashes is a tedious work with the setting of env variables and the long command in terminal. Humba eases the process of symbolicating the crashes. All u need is

  - *.app.dSYM file
  - *.crash file

In iOS when the app is compiling lldb compiler in parallel copies all the debug symbols along with the memory foot print to a debug symbol file with extension .dSYM . This symbol file is created every time the app is compiled and the generated symbol file is not the same as the previously generated file. This is the reason when we get a crash, the crash is not symbolicated on machines other than the one on which the build was generated. 

> Humba is a simple bash script that uses the XCode commandline tools and XCode symbolicatecrash.pl perl script. 

### Version
1.0.0

### Installation

You need XCode commandline tools installed:

Install Humba by running the following curl command in terminal
```
$ curl -fsSL https://raw.githubusercontent.com/MaheshRS/Humba/master/install.sh | sh
```

Once installation of the Humba is complete reopen terminal. 'resymbolicate' is the command we need to use.


```sh
$ resymbolicate <*.crash original crash file path> <*.app.dSYM file path> <*.crash destination file path>
```
* <*.crash original crash file path> is the crash file that needs to be symbolicated
* <*.app.dSYM file path> is the corresponding debug symbol file for the build
* <*.crash destination file path> is the optional destination file. This is optional argument, If the argument is no present then the symbolicated crash will be printer on the terminal

### Development

Want to contribute? Great! Please send your pull requests and please file an issue incase you run into trouble.

License
----
GNU GENERAL PUBLIC LICENSE