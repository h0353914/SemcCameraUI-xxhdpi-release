package android.support.v7.widget;

class ChildHelper$Bucket {
    static final int BITS_PER_WORD = 64;
    static final long LAST_BIT = Long.MIN_VALUE;
    long mData = 0;
    ChildHelper$Bucket mNext;

    ChildHelper$Bucket() {
    }

    void set(int i) {
        if (i >= 64) {
            ensureNext();
            this.mNext.set(i - 64);
        } else {
            this.mData |= 1 << i;
        }
    }

    private void ensureNext() {
        if (this.mNext == null) {
            this.mNext = new ChildHelper$Bucket();
        }
    }

    void clear(int i) {
        if (i >= 64) {
            if (this.mNext != null) {
                this.mNext.clear(i - 64);
                return;
            }
            return;
        }
        this.mData &= ~(1 << i);
    }

    boolean get(int i) {
        if (i < 64) {
            return ((1 << i) & this.mData) != 0;
        }
        ensureNext();
        return this.mNext.get(i - 64);
    }

    void reset() {
        this.mData = 0L;
        if (this.mNext != null) {
            this.mNext.reset();
        }
    }

    void insert(int i, boolean z) {
        if (i >= 64) {
            ensureNext();
            this.mNext.insert(i - 64, z);
            return;
        }
        boolean z2 = (this.mData & Long.MIN_VALUE) != 0;
        long j = (1 << i) - 1;
        this.mData = (this.mData & j) | (((~j) & this.mData) << 1);
        if (z) {
            set(i);
        } else {
            clear(i);
        }
        if (z2 || this.mNext != null) {
            ensureNext();
            this.mNext.insert(0, z2);
        }
    }

    boolean remove(int i) {
        if (i >= 64) {
            ensureNext();
            return this.mNext.remove(i - 64);
        }
        long j = 1 << i;
        boolean z = (this.mData & j) != 0;
        this.mData &= ~j;
        long j2 = j - 1;
        this.mData = (this.mData & j2) | Long.rotateRight((~j2) & this.mData, 1);
        if (this.mNext != null) {
            if (this.mNext.get(0)) {
                set(63);
            }
            this.mNext.remove(0);
        }
        return z;
    }

    int countOnesBefore(int i) {
        if (this.mNext == null) {
            if (i >= 64) {
                return Long.bitCount(this.mData);
            }
            return Long.bitCount(((1 << i) - 1) & this.mData);
        }
        if (i < 64) {
            return Long.bitCount(((1 << i) - 1) & this.mData);
        }
        return this.mNext.countOnesBefore(i - 64) + Long.bitCount(this.mData);
    }

    public String toString() {
        if (this.mNext == null) {
            return Long.toBinaryString(this.mData);
        }
        return this.mNext.toString() + "xx" + Long.toBinaryString(this.mData);
    }
}
