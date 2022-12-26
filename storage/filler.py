def fill_with_05(infile, outfile):
    with open(infile, encoding="UTF-8") as without_confidence:
        with open(outfile, "w", encoding="UTF-8") as with_confidence:
            for line in without_confidence:
                stripped = line.strip()
                if stripped != "" and not stripped.startswith("-"):
                    with_confidence.write(stripped + "0.5;\n")
                else:
                    with_confidence.write(line)
                    
fill_with_05("Facts_new.txt", "Facts_with_confidence.txt")
fill_with_05("Rules.txt", "Rules_with_confidence.txt")
