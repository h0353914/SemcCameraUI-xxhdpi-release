package android.support.v7.util;

class DiffUtil$PostponedUpdate {
    int currentPos;
    int posInOwnerList;
    boolean removal;

    public DiffUtil$PostponedUpdate(int i, int i2, boolean z) {
        this.posInOwnerList = i;
        this.currentPos = i2;
        this.removal = z;
    }
}
