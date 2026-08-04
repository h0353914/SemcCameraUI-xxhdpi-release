package com.google.protobuf.nano;

import java.io.IOException;

public class CodedOutputByteBufferNano$OutOfSpaceException extends IOException {
    private static final long serialVersionUID = -6947486886997889499L;

    CodedOutputByteBufferNano$OutOfSpaceException(int position, int limit) {
        super("CodedOutputStream was writing to a flat byte array and ran out of space (pos " + position + " limit " + limit + ").");
    }
}
