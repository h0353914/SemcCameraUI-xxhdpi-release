package com.google.protobuf.nano;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class CodedOutputByteBufferNano$OutOfSpaceException extends IOException {
    private static final long serialVersionUID = -6947486886997889499L;

    CodedOutputByteBufferNano$OutOfSpaceException(int position, int limit) {
        StringBuilder sb = new StringBuilder(108);
        sb.append("CodedOutputStream was writing to a flat byte array and ran out of space (pos ");
        sb.append(position);
        sb.append(" limit ");
        sb.append(limit);
        sb.append(").");
        super(sb.toString());
    }
}
