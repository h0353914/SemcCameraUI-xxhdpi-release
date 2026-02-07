package com.google.gson.internal;

import java.io.IOException;
import java.io.Writer;

/* JADX INFO: loaded from: classes.dex */
final class Streams$AppendableWriter extends Writer {
    private final Appendable appendable;
    private final Streams$AppendableWriter$CurrentWrite currentWrite;

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
    }

    /* synthetic */ Streams$AppendableWriter(Appendable appendable, Streams$1 streams$1) {
        this(appendable);
    }

    private Streams$AppendableWriter(Appendable appendable) {
        this.currentWrite = new Streams$AppendableWriter$CurrentWrite();
        this.appendable = appendable;
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) throws IOException {
        this.currentWrite.chars = cArr;
        this.appendable.append(this.currentWrite, i, i2 + i);
    }

    @Override // java.io.Writer
    public void write(int i) throws IOException {
        this.appendable.append((char) i);
    }
}
