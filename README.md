[Fastest submission since 2017-01-22!](https://benchmarksgame.alioth.debian.org/u64q/program.php?test=knucleotide&lang=ghc&id=2)

```
time ./knucleotide +RTS -N -sstderr < input25000000.txt
A 30.295
T 30.151
C 19.800
G 19.754

AA 9.177
TA 9.132
AT 9.131
TT 9.091
CA 6.002
AC 6.001
AG 5.987
GA 5.984
CT 5.971
TC 5.971
GT 5.957
TG 5.956
CC 3.917
GC 3.911
CG 3.909
GG 3.902

1471758	GGT
446535	GGTA
47336	GGTATT
893	GGTATTTTAATT
893	GGTATTTTAATTTATAGT
  70,977,090,552 bytes allocated in the heap
	  22,718,920 bytes copied during GC
	 125,200,872 bytes maximum residency (3 sample(s))
	  26,149,880 bytes maximum slop
			1464 MB total memory in use (128 MB lost due to fragmentation)

									 Tot time (elapsed)  Avg pause  Max pause
  Gen  0        88 colls,    88 par    0.110s   0.041s     0.0005s    0.0113s
  Gen  1         3 colls,     2 par    0.000s   0.001s     0.0002s    0.0002s

  Parallel GC work balance: 80.74% (serial 0%, perfect 100%)

  TASKS: 10 (1 bound, 9 peak workers (9 total), using -N4)

  SPARKS: 448 (426 converted, 0 overflowed, 0 dud, 1 GC'd, 21 fizzled)

  INIT    time    0.000s  (  0.018s elapsed)
  MUT     time  141.980s  ( 37.416s elapsed)
  GC      time    0.110s  (  0.041s elapsed)
  EXIT    time    0.000s  (  0.004s elapsed)
  Total   time  142.090s  ( 37.479s elapsed)

  Alloc rate    499,909,138 bytes per MUT second

  Productivity  99.9% of total user, 378.8% of total elapsed

gc_alloc_block_sync: 1541
whitehole_spin: 0
gen[0].sync: 324
gen[1].sync: 2

real	0m37.539s
user	2m22.090s
sys	0m0.667s
```
