with open("conditional_replace.mcfunction","w") as file:
    for x in range(-7,7+1):
        for y in range(-7,7+1):
            for z in range(-7,7+1):
                file.write(f"execute positioned ~{x if x != 0 else ''} ~{y if y != 0 else ''} ~{z if z != 0 else ''} in pandabuild:servers/snapshot/overworld unless block ~ ~ ~ air in pandabuild:servers/snapshot/variant_2/overworld if block ~ ~ ~ air in pandabuild:storage run setblock ~ ~ ~ structure_void\n")

for r in range(1,21):
    with open(f"sphere/radius_{r}.mcfunction","w") as file:
        file.write(f"# arguments: block\n\n")

        for x in range(-r,r+1):
            for y in range(-r,r+1):
                for z in range(-r,r+1):
                    if x*x + y*y + z*z > r*r:
                        continue
                    file.write(f"$setblock ~{x if x != 0 else ''} ~{y if y != 0 else ''} ~{z if z != 0 else ''} $(block)\n")
