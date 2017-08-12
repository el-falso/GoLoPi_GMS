/// @description Insert description here

codeSize = [5, 10];

code = generateCode(codeSize[global.level]);
codeStr = "";

index = 0;

for (i = 0; i < ds_list_size(code); i++) {
	codeStr += string(code[| i]);
}