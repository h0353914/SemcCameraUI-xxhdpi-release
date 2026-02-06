package android.support.v7.widget;

class AdapterHelper$UpdateOp {
    static final int ADD = 1;
    static final int MOVE = 8;
    static final int POOL_SIZE = 30;
    static final int REMOVE = 2;
    static final int UPDATE = 4;
    int cmd;
    int itemCount;
    Object payload;
    int positionStart;

    AdapterHelper$UpdateOp(int i, int i2, int i3, Object obj) {
        this.cmd = i;
        this.positionStart = i2;
        this.itemCount = i3;
        this.payload = obj;
    }

    String cmdToString() {
        int i = this.cmd;
        if (i == 4) {
            return "up";
        }
        if (i == 8) {
            return "mv";
        }
        switch (i) {
            case 1:
                return "add";
            case 2:
                return "rm";
            default:
                return "??";
        }
    }

    public String toString() {
        return Integer.toHexString(System.identityHashCode(this)) + "[" + cmdToString() + ",s:" + this.positionStart + "c:" + this.itemCount + ",p:" + this.payload + "]";
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AdapterHelper$UpdateOp adapterHelper$UpdateOp = (AdapterHelper$UpdateOp) obj;
        if (this.cmd != adapterHelper$UpdateOp.cmd) {
            return false;
        }
        if (this.cmd == 8 && Math.abs(this.itemCount - this.positionStart) == 1 && this.itemCount == adapterHelper$UpdateOp.positionStart && this.positionStart == adapterHelper$UpdateOp.itemCount) {
            return true;
        }
        if (this.itemCount != adapterHelper$UpdateOp.itemCount || this.positionStart != adapterHelper$UpdateOp.positionStart) {
            return false;
        }
        if (this.payload != null) {
            if (!this.payload.equals(adapterHelper$UpdateOp.payload)) {
                return false;
            }
        } else if (adapterHelper$UpdateOp.payload != null) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return (31 * ((this.cmd * 31) + this.positionStart)) + this.itemCount;
    }
}
