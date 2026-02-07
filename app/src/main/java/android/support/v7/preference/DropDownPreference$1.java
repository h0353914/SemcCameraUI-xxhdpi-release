package android.support.v7.preference;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemSelectedListener;

/* JADX INFO: loaded from: classes.dex */
class DropDownPreference$1 implements AdapterView$OnItemSelectedListener {
    final /* synthetic */ DropDownPreference this$0;

    @Override // android.widget.AdapterView$OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    DropDownPreference$1(DropDownPreference dropDownPreference) {
        this.this$0 = dropDownPreference;
    }

    @Override // android.widget.AdapterView$OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        if (i >= 0) {
            String string = this.this$0.getEntryValues()[i].toString();
            if (string.equals(this.this$0.getValue()) || !this.this$0.callChangeListener(string)) {
                return;
            }
            this.this$0.setValue(string);
        }
    }
}
