with open("conditional_replace.mcfunction","w") as file:
    for x in range(-7,7+1):
        if x == 0: x = ""
        for y in range(-7,7+1):
            if y == 0: y = ""
            for z in range(-7,7+1):
                if z == 0: z = ""
                file.write(f"execute positioned ~{x} ~{y} ~{z} in pandabuild:servers/snapshot/overworld unless block ~ ~ ~ air in pandabuild:servers/snapshot/variant_2/overworld if block ~ ~ ~ air in pandabuild:storage run setblock ~ ~ ~ structure_void\n")
