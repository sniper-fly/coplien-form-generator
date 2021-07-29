# Coplien's form C++ file generator

You can automatically generate Coplien's form C++ class header and definition.  
![coplien-form-generator](https://user-images.githubusercontent.com/50983271/127451596-c84e4fb9-cf20-4c0e-8a9f-2e27aa47ed36.gif)

## syntax
cpform [option] [class name...]

### There are two options:
- `g`     (generate both [class name].cpp, [class name].hpp)
- `d`     (delete both [class name].cpp, [class name].hpp)

## Example
```
$ cpform g Apple Banana
create Apple.cpp
create Apple.hpp
create Banana.cpp
create Banana.hpp

$ cpform d Apple
delete Apple.cpp
delete Apple.hpp
```

## Edit template
You can easily edit template files as you want.  
`__CLASS_NAME__` is the keyword to be replaced with the Class name.  
`__HEADER__`, with the appropriate bystander macro.

## Installation
### reqirements
bash, GNU sed  
1) Modify INSTALL_PATH inside install.sh as you want.  
2) Execute install.sh command on the root of this repo.  

## Notes
- If you generate class files by g option although there are already some .cpp .hpp file, this command does not do anything.
If .cpp or .hpp file do not exist, d option affects nothing.

- Plz execute install.sh upon the root of this repo, or ln command cannot work well.

- This program use GNU sed only for installation. If you are not using GNU sed, you cannot successfully execute install.sh. Suppose you are an Mac user, you can use gsed instead (replace "sed" into "gsed" on install.sh). Aside from that way, you manually have to  edit the coplien.sh.

- You can uninstall this program by manually deleting the symlink on the path you installed.
