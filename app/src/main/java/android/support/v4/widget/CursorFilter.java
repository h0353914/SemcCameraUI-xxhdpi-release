package android.support.v4.widget;

import android.database.Cursor;
import android.widget.Filter;
import android.widget.Filter$FilterResults;

/* JADX INFO: loaded from: classes.dex */
class CursorFilter extends Filter {
    CursorFilter$CursorFilterClient mClient;

    CursorFilter(CursorFilter$CursorFilterClient cursorFilter$CursorFilterClient) {
        this.mClient = cursorFilter$CursorFilterClient;
    }

    @Override // android.widget.Filter
    public CharSequence convertResultToString(Object obj) {
        return this.mClient.convertToString((Cursor) obj);
    }

    @Override // android.widget.Filter
    protected Filter$FilterResults performFiltering(CharSequence charSequence) {
        Cursor cursorRunQueryOnBackgroundThread = this.mClient.runQueryOnBackgroundThread(charSequence);
        Filter$FilterResults filter$FilterResults = new Filter$FilterResults();
        if (cursorRunQueryOnBackgroundThread != null) {
            filter$FilterResults.count = cursorRunQueryOnBackgroundThread.getCount();
            filter$FilterResults.values = cursorRunQueryOnBackgroundThread;
        } else {
            filter$FilterResults.count = 0;
            filter$FilterResults.values = null;
        }
        return filter$FilterResults;
    }

    @Override // android.widget.Filter
    protected void publishResults(CharSequence charSequence, Filter$FilterResults filter$FilterResults) {
        Cursor cursor = this.mClient.getCursor();
        if (filter$FilterResults.values == null || filter$FilterResults.values == cursor) {
            return;
        }
        this.mClient.changeCursor((Cursor) filter$FilterResults.values);
    }
}
