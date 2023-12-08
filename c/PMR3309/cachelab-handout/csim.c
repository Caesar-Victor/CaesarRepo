/*Victor Nascimento Pereira, Nusp - 10773530*/
#include "cachelab.h"
#include <getopt.h>
#include <stdlib.h>
#include <stdio.h>
#include <errno.h>
#include <unistd.h>
#include <string.h>

#define _ERRO_ARGUMENTO -10
#define _ERRO_ARQUIVO   -20

/* Globals set by command line args */
int verbosity = 0; /* print trace if set */
int s = 0; /* set index bits */
int b = 0; /* block offset bits */
int E = 0; /* associativity */
char* trace_file = NULL;
int h = 0;
int m = 0;
int e = 0;

typedef struct {
    int valid;
    unsigned int tag;
} Linha;

typedef struct {
    Linha* linhas;
} Set;

typedef struct {
    int num_sets;
    Set* sets;
} Cache;

Cache initCache(int num_sets, int associcao) {
    Cache cache;
    cache.num_sets = num_sets;
    cache.sets = malloc(num_sets * sizeof(Set));

    for(int i=0; i<num_sets; i++) {
        cache.sets[i].linhas = malloc(associcao * sizeof(Linha));
        for (int j = 0; j < associcao; j++)        {
            cache.sets[i].linhas[j].valid = 0;
        }
    }
    return cache;
}

void simCache(Cache* cache, unsigned long addr) {
    unsigned long set_i = (addr >> b) & ((1<<s)-1);
    unsigned long tag = addr >> (s + b);
    int lru = 0;

    for(int i = 0; i < E; i++) {
        if (cache->sets[set_i].linhas[i].valid && 
            cache->sets[set_i].linhas[i].tag == tag) {
            h++;
            return;
        }
        else if (!cache->sets[set_i].linhas[i].valid) {
            cache->sets[set_i].linhas[i].valid = 1;
            cache->sets[set_i].linhas[i].tag = tag;
            m++;
            return;
        }
    }

    int evitado = 0;
    cache->sets[set_i].linhas[evitado].tag = tag;
    cache->sets[set_i].linhas[evitado].valid = 1;
    e++;
    m++;
}

/*
 * printUsage - Print usage info
 */
void printUsage(char* argv[])
{
    printf("Usage: %s [-hv] -s <num> -E <num> -b <num> -t <file>\n", argv[0]);
    printf("Options:\n");
    printf("  -h         Print this help message.\n");
    printf("  -v         Optional verbose flag.\n");
    printf("  -s <num>   Number of set index bits.\n");
    printf("  -E <num>   Number of lines per set.\n");
    printf("  -b <num>   Number of block offset bits.\n");
    printf("  -t <file>  Trace file.\n");
    printf("\nExamples:\n");
    printf("  linux>  %s -s 4 -E 1 -b 4 -t traces/yi.trace\n", argv[0]);
    printf("  linux>  %s -v -s 8 -E 2 -b 4 -t traces/yi.trace\n", argv[0]);
    exit(0);
}


int main(int argc, char* argv[])
{
    FILE* arquivo;
    char linha[512];

    unsigned int tam;
    unsigned long endr;

    /* Verifica argumentos */
    if(argc<2) {
        fprintf(stderr, "Argumento faltando: nome de arquivo\n");
        return _ERRO_ARGUMENTO;
    }
    
    char c;
    while( (c=getopt(argc,argv,"s:E:b:t:vh")) != -1){
        switch(c){
        case 's':
            s = atoi(optarg);
            break;
        case 'E':
            E = atoi(optarg);
            break;
        case 'b':
            b = atoi(optarg);
            break;
        case 't':
            trace_file = optarg;
            break;
        case 'v':
            verbosity = 1;
            break;
        case 'h':
            printUsage(argv);
            exit(0);
        default:
            printUsage(argv);
            exit(1);
        }
    }

    arquivo = fopen(trace_file, "r");

    if(!arquivo){
        fprintf(stderr, "Erro ao abrir arquivo %s: %s\n", trace_file, strerror(errno));
        return _ERRO_ARQUIVO;
    }

    Cache cache = initCache(1<<s, E);

    while(fgets(linha, 512, arquivo) != NULL) {
        if(linha[1]=='S' || linha[1]=='L' || linha[1]=='M') {
            sscanf(linha+3, "%lx,%u", &endr, &tam);
            simCache(&cache, endr);
        }
    }
    
    fclose(arquivo);
    printSummary(h, m, e);
    return 0;
}
