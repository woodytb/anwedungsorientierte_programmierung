with open("secret.txt", "r") as file1:
    secret_list = [line.strip() for line in file1]
with open("key.txt", "r") as file2:
    key_list = [line.strip() for line in file2]
col = int(key_list[0])
row = int(key_list[1])
posit = 0
with open("public.txt", "w") as file3:
    for posy in range(row):
        for posx in range(col):
            file3.write(secret_list[posit])
            posit += 1
        file3.write("\n")