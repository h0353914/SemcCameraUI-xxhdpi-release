package android.support.v7.widget;

import android.widget.AutoCompleteTextView;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
class SearchView$AutoCompleteTextViewReflector {
    private Method doAfterTextChanged;
    private Method doBeforeTextChanged;
    private Method ensureImeVisible;
    private Method showSoftInputUnchecked;

    SearchView$AutoCompleteTextViewReflector() {
        try {
            this.doBeforeTextChanged = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
            this.doBeforeTextChanged.setAccessible(true);
        } catch (NoSuchMethodException unused) {
        }
        try {
            this.doAfterTextChanged = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
            this.doAfterTextChanged.setAccessible(true);
        } catch (NoSuchMethodException unused2) {
        }
        try {
            this.ensureImeVisible = AutoCompleteTextView.class.getMethod("ensureImeVisible", Boolean.TYPE);
            this.ensureImeVisible.setAccessible(true);
        } catch (NoSuchMethodException unused3) {
        }
    }

    void doBeforeTextChanged(AutoCompleteTextView autoCompleteTextView) {
        if (this.doBeforeTextChanged != null) {
            try {
                this.doBeforeTextChanged.invoke(autoCompleteTextView, new Object[0]);
            } catch (Exception unused) {
            }
        }
    }

    void doAfterTextChanged(AutoCompleteTextView autoCompleteTextView) {
        if (this.doAfterTextChanged != null) {
            try {
                this.doAfterTextChanged.invoke(autoCompleteTextView, new Object[0]);
            } catch (Exception unused) {
            }
        }
    }

    void ensureImeVisible(AutoCompleteTextView autoCompleteTextView, boolean z) {
        if (this.ensureImeVisible != null) {
            try {
                this.ensureImeVisible.invoke(autoCompleteTextView, Boolean.valueOf(z));
            } catch (Exception unused) {
            }
        }
    }
}
