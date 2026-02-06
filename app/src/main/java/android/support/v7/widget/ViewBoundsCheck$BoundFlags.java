package android.support.v7.widget;

class ViewBoundsCheck$BoundFlags {
    int mBoundFlags = 0;
    int mChildEnd;
    int mChildStart;
    int mRvEnd;
    int mRvStart;

    int compare(int i, int i2) {
        if (i > i2) {
            return 1;
        }
        return i == i2 ? 2 : 4;
    }

    ViewBoundsCheck$BoundFlags() {
    }

    void setBounds(int i, int i2, int i3, int i4) {
        this.mRvStart = i;
        this.mRvEnd = i2;
        this.mChildStart = i3;
        this.mChildEnd = i4;
    }

    void setFlags(int i, int i2) {
        this.mBoundFlags = (i & i2) | (this.mBoundFlags & (~i2));
    }

    void addFlags(int i) {
        this.mBoundFlags = i | this.mBoundFlags;
    }

    void resetFlags() {
        this.mBoundFlags = 0;
    }

    boolean boundsMatch() {
        if ((this.mBoundFlags & 7) != 0 && (this.mBoundFlags & (compare(this.mChildStart, this.mRvStart) << 0)) == 0) {
            return false;
        }
        if ((this.mBoundFlags & 112) != 0 && (this.mBoundFlags & (compare(this.mChildStart, this.mRvEnd) << 4)) == 0) {
            return false;
        }
        if ((this.mBoundFlags & 1792) != 0 && (this.mBoundFlags & (compare(this.mChildEnd, this.mRvStart) << 8)) == 0) {
            return false;
        }
        if ((this.mBoundFlags & 28672) != 0) {
            return ((compare(this.mChildEnd, this.mRvEnd) << 12) & this.mBoundFlags) != 0;
        }
        return true;
    }
}
