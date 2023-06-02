# C_VSCode_Template


[Linux commands cheat sheet](https://ryanstutorials.net/linuxtutorial/cheatsheet.php)

[Linux File Permissions](https://wizardzines.com/comics/permissions/)

[Linux tar command](https://wizardzines.com/comics/tar/)


Notes
* [Using expressions in the watch panel with LLDB](https://github.com/vadimcn/vscode-lldb/blob/master/MANUAL.md#native-expressions)
* To view the data pointed to by a void* 
  *   For LLDB: 
	  * `/nat *(int*) pVoid`
* [View pointer as array in debugger](https://github.com/microsoft/vscode-cpptools/issues/172#issuecomment-1281804128)
  *   For LLDB:
	  * `/nat *(int(*)[13])pIntArray`
  *   For GDB:
      * `*pIntArray@13` or  `*pIntArray@ARRAY_SIZE`
