DEFAULT_FLAGS=--make -O2 -rtsopts -threaded -fllvm


default: knucleotide
.PHONY: default

bench: knucleotide
	time ./$< +RTS -N4 -sstderr -A200M < input25000000.txt
.PHONY: bench

prof: knucleotide-prof
	time ./$< +RTS -N4 -sstderr -p < input5000000.txt
.PHONY: prof

knucleotide: knucleotide.hs
	stack ghc -- -o $@ ${DEFAULT_FLAGS} $<

knucleotide-prof: knucleotide.hs
	stack ghc -- -o $@ ${DEFAULT_FLAGS} -prof -fprof-auto $<

.PHONY: clean
clean:
	rm -rf knucleotide knucleotide-prof *.o *.hi *.aux *.eventlog
