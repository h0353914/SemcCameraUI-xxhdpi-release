package com.google.gson.internal;

/* JADX INFO: loaded from: classes.dex */
class Streams$AppendableWriter$CurrentWrite implements CharSequence {
    char[] chars;

    Streams$AppendableWriter$CurrentWrite() {
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.chars.length;
    }

    @Override // java.lang.CharSequence
    public char charAt(int i) {
        return this.chars[i];
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i, int i2) {
        return new String(this.chars, i, i2 - i);
    }
}
