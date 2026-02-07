package android.support.v4.widget;

import android.database.Cursor;

/* JADX INFO: loaded from: classes.dex */
interface CursorFilter$CursorFilterClient {
    void changeCursor(Cursor cursor);

    CharSequence convertToString(Cursor cursor);

    Cursor getCursor();

    Cursor runQueryOnBackgroundThread(CharSequence charSequence);
}
