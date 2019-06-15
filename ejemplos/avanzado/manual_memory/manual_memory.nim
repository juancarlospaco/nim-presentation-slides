let number = create(int, int.sizeOf)  # Create
number[] = 42                         # Assign
echo number[]  # 42
zeroMem(number, number.type.sizeOf)   # Delete
echo number[]  # 0
