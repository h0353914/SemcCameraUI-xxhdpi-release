package android.support.v7.app;

import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.v7.content.res.AppCompatResources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
public class WindowDecorActionBar$TabImpl extends ActionBar$Tab {
    private ActionBar$TabListener mCallback;
    private CharSequence mContentDesc;
    private View mCustomView;
    private Drawable mIcon;
    private int mPosition = -1;
    private Object mTag;
    private CharSequence mText;
    final /* synthetic */ WindowDecorActionBar this$0;

    public WindowDecorActionBar$TabImpl(WindowDecorActionBar windowDecorActionBar) {
        this.this$0 = windowDecorActionBar;
    }

    @Override // android.support.v7.app.ActionBar$Tab
    public Object getTag() {
        return this.mTag;
    }

    @Override // android.support.v7.app.ActionBar$Tab
    public ActionBar$Tab setTag(Object obj) {
        this.mTag = obj;
        return this;
    }

    public ActionBar$TabListener getCallback() {
        return this.mCallback;
    }

    @Override // android.support.v7.app.ActionBar$Tab
    public ActionBar$Tab setTabListener(ActionBar$TabListener actionBar$TabListener) {
        this.mCallback = actionBar$TabListener;
        return this;
    }

    @Override // android.support.v7.app.ActionBar$Tab
    public View getCustomView() {
        return this.mCustomView;
    }

    @Override // android.support.v7.app.ActionBar$Tab
    public ActionBar$Tab setCustomView(View view) {
        this.mCustomView = view;
        if (this.mPosition >= 0) {
            this.this$0.mTabScrollView.updateTab(this.mPosition);
        }
        return this;
    }

    @Override // android.support.v7.app.ActionBar$Tab
    public ActionBar$Tab setCustomView(int i) {
        return setCustomView(LayoutInflater.from(this.this$0.getThemedContext()).inflate(i, (ViewGroup) null));
    }

    @Override // android.support.v7.app.ActionBar$Tab
    public Drawable getIcon() {
        return this.mIcon;
    }

    @Override // android.support.v7.app.ActionBar$Tab
    public int getPosition() {
        return this.mPosition;
    }

    public void setPosition(int i) {
        this.mPosition = i;
    }

    @Override // android.support.v7.app.ActionBar$Tab
    public CharSequence getText() {
        return this.mText;
    }

    @Override // android.support.v7.app.ActionBar$Tab
    public ActionBar$Tab setIcon(Drawable drawable) {
        this.mIcon = drawable;
        if (this.mPosition >= 0) {
            this.this$0.mTabScrollView.updateTab(this.mPosition);
        }
        return this;
    }

    @Override // android.support.v7.app.ActionBar$Tab
    public ActionBar$Tab setIcon(int i) {
        return setIcon(AppCompatResources.getDrawable(this.this$0.mContext, i));
    }

    @Override // android.support.v7.app.ActionBar$Tab
    public ActionBar$Tab setText(CharSequence charSequence) {
        this.mText = charSequence;
        if (this.mPosition >= 0) {
            this.this$0.mTabScrollView.updateTab(this.mPosition);
        }
        return this;
    }

    @Override // android.support.v7.app.ActionBar$Tab
    public ActionBar$Tab setText(int i) {
        return setText(this.this$0.mContext.getResources().getText(i));
    }

    @Override // android.support.v7.app.ActionBar$Tab
    public void select() {
        this.this$0.selectTab(this);
    }

    @Override // android.support.v7.app.ActionBar$Tab
    public ActionBar$Tab setContentDescription(int i) {
        return setContentDescription(this.this$0.mContext.getResources().getText(i));
    }

    @Override // android.support.v7.app.ActionBar$Tab
    public ActionBar$Tab setContentDescription(CharSequence charSequence) {
        this.mContentDesc = charSequence;
        if (this.mPosition >= 0) {
            this.this$0.mTabScrollView.updateTab(this.mPosition);
        }
        return this;
    }

    @Override // android.support.v7.app.ActionBar$Tab
    public CharSequence getContentDescription() {
        return this.mContentDesc;
    }
}
