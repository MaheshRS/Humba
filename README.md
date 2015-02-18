# Humba

Humba is a basic bash shell script used to symbolicate iOS crashes. Symbolicating crashes is a tedious work with the setting of env variables and the long command in terminal. Humba eases the process of symbolicating the crashes. All u need is

  - *.app.dSYM file
  - *.crash file

In iOS when the app is compiling lldb compiler in parallel copies all the debug symbols along with the memory foot print to a debug symbol file with extension .dSYM . This symbol file is created every time the app is compiled and the generated symbol file is not the same as the previously generated file. This is the reason when we get a crash, the crash is not symbolicated on machines other than the one on which the build was generated. 

With version 1.0.1, information about the build UUID, build arch can be obtained using -u option

> Humba is a simple bash script that uses the XCode commandline tools and XCode symbolicatecrash.pl perl script. 

### Version
1.0.0
  - Symbolicate Crash logs using original DYSM

1.0.1
  - Display the UUID and arch information of the buid using the -u option

1.0.2
  - Issue in updating the environmental path variable corrected


### Installation

You need XCode commandline tools installed:

If you are updating Humba from 1.0.1 to higher version, we need to do a quick clean up
 * Open ~/.bash_profile (vi ~/.bash_profile)
 * Delete the line which contains '/<your username>/Humba/Scripts string'
 * Save (Press esc and type ':wq') 

Install Humba by running the following curl command in terminal
```
$ curl -fsSL https://raw.githubusercontent.com/MaheshRS/Humba/master/install.sh | sh
```

### Usage

Once installation of the Humba is complete reopen terminal. 'resymbolicate' is the command we need to use.


```sh
$ resymbolicate <*.crash original crash file path> <*.app.dSYM file path> <*.crash destination file path>
```
* <*.crash original crash file path> is the crash file that needs to be symbolicated
* <*.app.dSYM file path> is the corresponding debug symbol file for the build
* <*.crash destination file path> is the optional destination file. This is optional argument, If the argument is no present then the symbolicated crash will be printer on the terminal


To get the build information use the following command

```sh
$ resymbolicate -u <*.app file path>
```
* <*.app file path> file path to the corresponding .app file.

### Development

Want to contribute? Great! Please send your pull requests and please file an issue incase you run into trouble.

License
----
GNU GENERAL PUBLIC LICENSE