package android.support.v7.app;

import android.content.Context;
import android.database.Cursor;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.CursorAdapter;

/* JADX INFO: loaded from: classes.dex */
class AlertController$AlertParams$2 extends CursorAdapter {
    private final int mIsCheckedIndex;
    private final int mLabelIndex;
    final /* synthetic */ AlertController$AlertParams this$0;
    final /* synthetic */ AlertController val$dialog;
    final /* synthetic */ AlertController$RecycleListView val$listView;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AlertController$AlertParams$2(AlertController$AlertParams alertController$AlertParams, Context context, Cursor cursor, boolean z, AlertController$RecycleListView alertController$RecycleListView, AlertController alertController) {
        super(context, cursor, z);
        this.this$0 = alertController$AlertParams;
        this.val$listView = alertController$RecycleListView;
        this.val$dialog = alertController;
        Cursor cursor2 = getCursor();
        this.mLabelIndex = cursor2.getColumnIndexOrThrow(this.this$0.mLabelColumn);
        this.mIsCheckedIndex = cursor2.getColumnIndexOrThrow(this.this$0.mIsCheckedColumn);
    }

    @Override // android.widget.CursorAdapter
    public void bindView(View view, Context context, Cursor cursor) {
        ((CheckedTextView) view.findViewById(16908308)).setText(cursor.getString(this.mLabelIndex));
        this.val$listView.setItemChecked(cursor.getPosition(), cursor.getInt(this.mIsCheckedIndex) == 1);
    }

    @Override // android.widget.CursorAdapter
    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.this$0.mInflater.inflate(this.val$dialog.mMultiChoiceItemLayout, viewGroup, false);
    }
}
