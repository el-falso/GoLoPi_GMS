codeLength = argument0;
lockCode = ds_list_create();

randomize();

for (i = 0; i < codeLength; i++) {
	ds_list_add(lockCode, irandom_range(0,1));
}

return lockCode;