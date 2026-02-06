package androidx.versionedparcelable;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;

class VersionedParcelStream$InputBuffer {
    final int mFieldId;
    final DataInputStream mInputStream;
    private final int mSize;

    VersionedParcelStream$InputBuffer(int i, int i2, DataInputStream dataInputStream) throws IOException {
        this.mSize = i2;
        this.mFieldId = i;
        byte[] bArr = new byte[this.mSize];
        dataInputStream.readFully(bArr);
        this.mInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
    }
}
