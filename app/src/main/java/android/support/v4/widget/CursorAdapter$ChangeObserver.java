package android.support.v4.widget;

import android.database.ContentObserver;
import android.os.Handler;

/* JADX INFO: loaded from: classes.dex */
class CursorAdapter$ChangeObserver extends ContentObserver {
    final /* synthetic */ CursorAdapter this$0;

    @Override // android.database.ContentObserver
    public boolean deliverSelfNotifications() {
        return true;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CursorAdapter$ChangeObserver(CursorAdapter cursorAdapter) {
        super(new Handler());
        this.this$0 = cursorAdapter;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        this.this$0.onContentChanged();
    }
}
