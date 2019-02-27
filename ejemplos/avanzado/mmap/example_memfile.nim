import memfiles

var mm, mm_full, mm_half: MemFile


# Create a new file
mm = memfiles.open("temp.txt", mode = fmWrite, newFileSize = 1024)
mm.close()


# Read whole file
mm_full = memfiles.open("README.rst", mode = fmReadWrite, mappedSize = -1)


# Read First 512 Bytes
mm_half = memfiles.open("README.rst", mode = fmReadWrite, mappedSize = 512)


# Iterate lines of file
for line in lines(memfiles.open("README.rst")):
  echo line
