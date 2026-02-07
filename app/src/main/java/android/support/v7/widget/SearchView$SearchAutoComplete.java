package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.v7.appcompat.R$attr;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.KeyEvent$DispatcherState;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;

/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
public class SearchView$SearchAutoComplete extends AppCompatAutoCompleteTextView {
    private boolean mHasPendingShowSoftInputRequest;
    final Runnable mRunShowSoftInputIfNecessary;
    private SearchView mSearchView;
    private int mThreshold;

    @Override // android.widget.AutoCompleteTextView
    public void performCompletion() {
    }

    @Override // android.widget.AutoCompleteTextView
    protected void replaceText(CharSequence charSequence) {
    }

    public SearchView$SearchAutoComplete(Context context) {
        this(context, null);
    }

    public SearchView$SearchAutoComplete(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.autoCompleteTextViewStyle);
    }

    public SearchView$SearchAutoComplete(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mRunShowSoftInputIfNecessary = new SearchView$SearchAutoComplete$1(this);
        this.mThreshold = getThreshold();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        setMinWidth((int) TypedValue.applyDimension(1, getSearchViewTextMinWidthDp(), getResources().getDisplayMetrics()));
    }

    void setSearchView(SearchView searchView) {
        this.mSearchView = searchView;
    }

    @Override // android.widget.AutoCompleteTextView
    public void setThreshold(int i) {
        super.setThreshold(i);
        this.mThreshold = i;
    }

    boolean isEmpty() {
        return TextUtils.getTrimmedLength(getText()) == 0;
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z && this.mSearchView.hasFocus() && getVisibility() == 0) {
            this.mHasPendingShowSoftInputRequest = true;
            if (SearchView.isLandscapeMode(getContext())) {
                SearchView.HIDDEN_METHOD_INVOKER.ensureImeVisible(this, true);
            }
        }
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    protected void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        this.mSearchView.onTextFocusChanged();
    }

    @Override // android.widget.AutoCompleteTextView
    public boolean enoughToFilter() {
        return this.mThreshold <= 0 || super.enoughToFilter();
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
        if (i == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                KeyEvent$DispatcherState keyDispatcherState = getKeyDispatcherState();
                if (keyDispatcherState != null) {
                    keyDispatcherState.startTracking(keyEvent, this);
                }
                return true;
            }
            if (keyEvent.getAction() == 1) {
                KeyEvent$DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                if (keyDispatcherState2 != null) {
                    keyDispatcherState2.handleUpEvent(keyEvent);
                }
                if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                    this.mSearchView.clearFocus();
                    setImeVisibility(false);
                    return true;
                }
            }
        }
        return super.onKeyPreIme(i, keyEvent);
    }

    private int getSearchViewTextMinWidthDp() {
        Configuration configuration = getResources().getConfiguration();
        int i = configuration.screenWidthDp;
        int i2 = configuration.screenHeightDp;
        if (i >= 960 && i2 >= 720 && configuration.orientation == 2) {
            return 256;
        }
        if (i < 600) {
            return (i < 640 || i2 < 480) ? 160 : 192;
        }
        return 192;
    }

    @Override // android.support.v7.widget.AppCompatAutoCompleteTextView, android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        if (this.mHasPendingShowSoftInputRequest) {
            removeCallbacks(this.mRunShowSoftInputIfNecessary);
            post(this.mRunShowSoftInputIfNecessary);
        }
        return inputConnectionOnCreateInputConnection;
    }

    void showSoftInputIfNecessary() {
        if (this.mHasPendingShowSoftInputRequest) {
            ((InputMethodManager) getContext().getSystemService("input_method")).showSoftInput(this, 0);
            this.mHasPendingShowSoftInputRequest = false;
        }
    }

    void setImeVisibility(boolean z) {
        InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
        if (!z) {
            this.mHasPendingShowSoftInputRequest = false;
            removeCallbacks(this.mRunShowSoftInputIfNecessary);
            inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
        } else {
            if (inputMethodManager.isActive(this)) {
                this.mHasPendingShowSoftInputRequest = false;
                removeCallbacks(this.mRunShowSoftInputIfNecessary);
                inputMethodManager.showSoftInput(this, 0);
                return;
            }
            this.mHasPendingShowSoftInputRequest = true;
        }
    }
}
