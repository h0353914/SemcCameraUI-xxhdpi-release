package androidx.versionedparcelable;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;

class VersionedParcelStream$FieldBuffer {
    private final int mFieldId;
    private final DataOutputStream mTarget;
    final ByteArrayOutputStream mOutput = new ByteArrayOutputStream();
    final DataOutputStream mDataStream = new DataOutputStream(this.mOutput);

    VersionedParcelStream$FieldBuffer(int i, DataOutputStream dataOutputStream) {
        this.mFieldId = i;
        this.mTarget = dataOutputStream;
    }

    void flushField() throws IOException {
        this.mDataStream.flush();
        int size = this.mOutput.size();
        this.mTarget.writeInt((this.mFieldId << 16) | (size >= 65535 ? 65535 : size));
        if (size >= 65535) {
            this.mTarget.writeInt(size);
        }
        this.mOutput.writeTo(this.mTarget);
    }
}
