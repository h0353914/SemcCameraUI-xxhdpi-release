package org.apache.commons.imaging.common.itu_t4;

class HuffmanTreeException extends Exception {
    private static final long serialVersionUID = 1;

    public HuffmanTreeException(String str) {
        super(str);
    }

    public HuffmanTreeException(String str, Throwable th) {
        super(str, th);
    }
}
