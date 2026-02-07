package com.sonyericsson.android.camera.recorder;

/* JADX INFO: loaded from: classes.dex */
public class RecorderParameters$DataSpace {
    public final int range;
    public final int standard;
    public final int transfer;

    public RecorderParameters$DataSpace(int i, int i2, int i3) {
        this.standard = i;
        this.transfer = i2;
        this.range = i3;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        sb.append("standard:" + this.standard + ",");
        sb.append("transfer:" + this.transfer + ",");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("range:");
        sb2.append(this.range);
        sb.append(sb2.toString());
        sb.append(']');
        return sb.toString();
    }
}
