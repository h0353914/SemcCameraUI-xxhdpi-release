package android.support.v7.view;

import android.content.Context;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.v4.internal.view.SupportMenu;
import android.support.v7.view.menu.MenuWrapperFactory;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
public class SupportActionModeWrapper extends android.view.ActionMode {
    final Context mContext;
    final ActionMode mWrappedObject;

    public SupportActionModeWrapper(Context context, ActionMode actionMode) {
        this.mContext = context;
        this.mWrappedObject = actionMode;
    }

    @Override // android.view.ActionMode
    public Object getTag() {
        return this.mWrappedObject.getTag();
    }

    @Override // android.view.ActionMode
    public void setTag(Object obj) {
        this.mWrappedObject.setTag(obj);
    }

    @Override // android.view.ActionMode
    public void setTitle(CharSequence charSequence) {
        this.mWrappedObject.setTitle(charSequence);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(CharSequence charSequence) {
        this.mWrappedObject.setSubtitle(charSequence);
    }

    @Override // android.view.ActionMode
    public void invalidate() {
        this.mWrappedObject.invalidate();
    }

    @Override // android.view.ActionMode
    public void finish() {
        this.mWrappedObject.finish();
    }

    @Override // android.view.ActionMode
    public Menu getMenu() {
        return MenuWrapperFactory.wrapSupportMenu(this.mContext, (SupportMenu) this.mWrappedObject.getMenu());
    }

    @Override // android.view.ActionMode
    public CharSequence getTitle() {
        return this.mWrappedObject.getTitle();
    }

    @Override // android.view.ActionMode
    public void setTitle(int i) {
        this.mWrappedObject.setTitle(i);
    }

    @Override // android.view.ActionMode
    public CharSequence getSubtitle() {
        return this.mWrappedObject.getSubtitle();
    }

    @Override // android.view.ActionMode
    public void setSubtitle(int i) {
        this.mWrappedObject.setSubtitle(i);
    }

    @Override // android.view.ActionMode
    public View getCustomView() {
        return this.mWrappedObject.getCustomView();
    }

    @Override // android.view.ActionMode
    public void setCustomView(View view) {
        this.mWrappedObject.setCustomView(view);
    }

    @Override // android.view.ActionMode
    public MenuInflater getMenuInflater() {
        return this.mWrappedObject.getMenuInflater();
    }

    @Override // android.view.ActionMode
    public boolean getTitleOptionalHint() {
        return this.mWrappedObject.getTitleOptionalHint();
    }

    @Override // android.view.ActionMode
    public void setTitleOptionalHint(boolean z) {
        this.mWrappedObject.setTitleOptionalHint(z);
    }

    @Override // android.view.ActionMode
    public boolean isTitleOptional() {
        return this.mWrappedObject.isTitleOptional();
    }
}
