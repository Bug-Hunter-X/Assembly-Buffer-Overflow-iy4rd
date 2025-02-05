mov ecx, [array_length] ; load array length
mov eax, [ebx + ecx*4] ; check if ecx is within bounds
cmp ecx, 0
jle error_handling ; handle error if ecx <= 0
mov edx, array_length
cmp ecx, edx
jge error_handling ; handle error if ecx >= array_length
mov eax, [ebx + ecx*4] ; access array element