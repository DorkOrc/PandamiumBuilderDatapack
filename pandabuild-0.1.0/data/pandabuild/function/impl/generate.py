for r in range(1,21):
    with open(f"sphere/radius_{r}.mcfunction","w") as file:
        file.write(f"# arguments: block\n\n")

        for x in range(-r,r+1):
            for y in range(-r,r+1):
                for z in range(-r,r+1):
                    if x*x + y*y + z*z > r*r:
                        continue
                    file.write(f"$setblock ~{x if x != 0 else ''} ~{y if y != 0 else ''} ~{z if z != 0 else ''} $(block) strict\n")
