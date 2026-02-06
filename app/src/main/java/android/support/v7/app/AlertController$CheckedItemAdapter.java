package android.support.v7.app;

import android.content.Context;
import android.widget.ArrayAdapter;

class AlertController$CheckedItemAdapter extends ArrayAdapter<CharSequence> {
    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }

    public AlertController$CheckedItemAdapter(Context context, int i, int i2, CharSequence[] charSequenceArr) {
        super(context, i, i2, charSequenceArr);
    }
}
