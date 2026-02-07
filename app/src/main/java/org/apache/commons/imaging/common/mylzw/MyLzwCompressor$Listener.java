package org.apache.commons.imaging.common.mylzw;

/* JADX INFO: loaded from: classes.dex */
public interface MyLzwCompressor$Listener {
    void clearCode(int i);

    void dataCode(int i);

    void eoiCode(int i);

    void init(int i, int i2);
}
