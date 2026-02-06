package android.support.v4.provider;

import java.util.Comparator;

class FontsContractCompat$5 implements Comparator<byte[]> {
    FontsContractCompat$5() {
    }

    @Override // java.util.Comparator
    public /* bridge */ /* synthetic */ int compare(byte[] bArr, byte[] bArr2) {
        return compare2(bArr, bArr2);
    }

    /* JADX INFO: renamed from: compare, reason: avoid collision after fix types in other method */
    public int compare2(byte[] bArr, byte[] bArr2) {
        if (bArr.length != bArr2.length) {
            return bArr.length - bArr2.length;
        }
        for (int i = 0; i < bArr.length; i++) {
            if (bArr[i] != bArr2[i]) {
                return bArr[i] - bArr2[i];
            }
        }
        return 0;
    }
}
