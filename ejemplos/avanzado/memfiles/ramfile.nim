import memfiles
let memory_mapped_file = memfiles.open("ramfile.nim", mode = fm_read_write)
let memory_mapped_file_pointer = memory_mapped_file.mem
let contents = cast[cstring](memory_mapped_file_pointer)
echo contents
