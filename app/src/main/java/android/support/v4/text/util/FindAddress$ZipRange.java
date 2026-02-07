package android.support.v4.text.util;

/* JADX INFO: loaded from: classes.dex */
class FindAddress$ZipRange {
    int mException1;
    int mException2;
    int mHigh;
    int mLow;

    FindAddress$ZipRange(int i, int i2, int i3, int i4) {
        this.mLow = i;
        this.mHigh = i2;
        this.mException1 = i3;
        this.mException2 = i3;
    }

    boolean matches(String str) {
        int i = Integer.parseInt(str.substring(0, 2));
        return (this.mLow <= i && i <= this.mHigh) || i == this.mException1 || i == this.mException2;
    }
}
