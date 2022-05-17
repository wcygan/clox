#ifndef CLOX_CHUNK_H
#define CLOX_CHUNK_H

#include "common.h"
#include "memory.h"
#include "value.h"

typedef enum {
    OP_RETURN,
    OP_CONSTANT,
    OP_NEGATE,
    OP_NOT,
    OP_NIL,
    OP_EQUAL,
    OP_GREATER,
    OP_LESS,
    OP_TRUE,
    OP_PRINT,
    OP_POP,
    OP_FALSE,
    OP_ADD,
    OP_SUBTRACT,
    OP_MULTIPLY,
    OP_DIVIDE,
} OpCode;

typedef struct {
    int count;
    int capacity;
    uint8_t *code;
    int *lines;
    ValueArray constants;
} Chunk;

void initChunk(Chunk *chunk);

void freeChunk(Chunk *chunk);

void writeChunk(Chunk *chunk, uint8_t byte, int line);

int addConstant(Chunk *chunk, Value value);

#endif //CLOX_CHUNK_H
