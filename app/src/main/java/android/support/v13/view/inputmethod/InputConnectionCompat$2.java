package android.support.v13.view.inputmethod;

import android.os.Bundle;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;

/* JADX INFO: loaded from: classes.dex */
class InputConnectionCompat$2 extends InputConnectionWrapper {
    final /* synthetic */ InputConnectionCompat$OnCommitContentListener val$listener;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    InputConnectionCompat$2(InputConnection inputConnection, boolean z, InputConnectionCompat$OnCommitContentListener inputConnectionCompat$OnCommitContentListener) {
        super(inputConnection, z);
        this.val$listener = inputConnectionCompat$OnCommitContentListener;
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public boolean performPrivateCommand(String str, Bundle bundle) {
        if (InputConnectionCompat.handlePerformPrivateCommand(str, bundle, this.val$listener)) {
            return true;
        }
        return super.performPrivateCommand(str, bundle);
    }
}
