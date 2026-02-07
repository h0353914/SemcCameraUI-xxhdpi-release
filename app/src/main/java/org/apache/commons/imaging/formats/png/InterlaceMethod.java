package org.apache.commons.imaging.formats.png;

/* JADX INFO: loaded from: classes.dex */
public enum InterlaceMethod {
    NONE(false),
    ADAM7(true);

    private final boolean progressive;

    InterlaceMethod(boolean z) {
        this.progressive = z;
    }

    public boolean isProgressive() {
        return this.progressive;
    }
}
