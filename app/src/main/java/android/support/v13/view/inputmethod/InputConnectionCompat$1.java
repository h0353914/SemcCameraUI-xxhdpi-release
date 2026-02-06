package android.support.v13.view.inputmethod;

import android.os.Bundle;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.view.inputmethod.InputContentInfo;

class InputConnectionCompat$1 extends InputConnectionWrapper {
    final /* synthetic */ InputConnectionCompat$OnCommitContentListener val$listener;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    InputConnectionCompat$1(InputConnection inputConnection, boolean z, InputConnectionCompat$OnCommitContentListener inputConnectionCompat$OnCommitContentListener) {
        super(inputConnection, z);
        this.val$listener = inputConnectionCompat$OnCommitContentListener;
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public boolean commitContent(InputContentInfo inputContentInfo, int i, Bundle bundle) {
        if (this.val$listener.onCommitContent(InputContentInfoCompat.wrap(inputContentInfo), i, bundle)) {
            return true;
        }
        return super.commitContent(inputContentInfo, i, bundle);
    }
}
