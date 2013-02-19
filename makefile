build:
	@echo "################################################################################"
	@echo "## EECS 638, Spring 2013"
	@echo "## Bill Parrott"
	@echo "## Homework #2\n"

	@make -B part1
	@make -B part2

	@echo "\n## Homework #2 successfully built"
	@echo "################################################################################\n"

################################################################################

part1:
	@echo "## Building Homework 2, Part 1"

	@opsr2 part1.ops
	@echo "Compiling part1.ops with opsr2"
	@echo "................Complete\n"

	@cc -c part1.s
	@echo "Compiling part1.s to part1.o with cc"
	@echo "................Complete\n"

	@cp /apps/opsr2/lib/shell.o ./
	@cp /apps/opsr2/lib/shellcr.o ./
	@cp /apps/opsr2/lib/rwbnolnk.o ./
	@cp /apps/opsr2/lib/opslib.a ./
	@cp /apps/opsr2/lib/startup.o ./
	@echo "Copying required files from /apps/opsr2/lib"
	@echo "................Complete\n"

	@cc part1.o shell.o shellcr.o rwbnolnk.o opslib.a startup.o -lm -o part1
	@echo "Compiling final output file for part 1"
	@echo "................Complete\n"

################################################################################

part2:
	@echo "## Building Homework 2, Part 2"

	@opsr2 part21.ops
	@echo "Compiling part21.ops with opsr2"
	@echo "................Complete\n"

	@opsr2 part22.ops
	@echo "Compiling part22.ops with opsr2"
	@echo "................Complete\n"

	@cc -c part21.s
	@echo "Compiling part21.s to part21.o with cc"
	@echo "................Complete\n"

	@cc -c part22.s
	@echo "Compiling part22.s to part22.o with cc"
	@echo "................Complete\n"

	@cp /apps/opsr2/lib/shell.o ./
	@cp /apps/opsr2/lib/shellcr.o ./
	@cp /apps/opsr2/lib/rwbnolnk.o ./
	@cp /apps/opsr2/lib/opslib.a ./
	@cp /apps/opsr2/lib/startup.o ./
	@echo "Copying required files from /apps/opsr2/lib"
	@echo "................Complete\n"

	@cc part21.o part22.o shell.o shellcr.o rwbnolnk.o opslib.a startup.o -lm -o part1
	@echo "Compiling final output file for part 2"
	@echo "................Complete\n"
