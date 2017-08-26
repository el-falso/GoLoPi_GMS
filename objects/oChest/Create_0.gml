/// @description Define size and code for Chests

codeSize = [5, 10];

code = generateCode(codeSize[global.level]);
index = 0;

codeStr = "";
for (i = 0; i < ds_list_size(code); i++) {
	codeStr += string(code[| i]);
}