package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources$Theme;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.view.ContextThemeWrapper;
import android.view.LayoutInflater;

public final class ThemedSpinnerAdapter$Helper {
    private final Context mContext;
    private LayoutInflater mDropDownInflater;
    private final LayoutInflater mInflater;

    public ThemedSpinnerAdapter$Helper(@NonNull Context context) {
        this.mContext = context;
        this.mInflater = LayoutInflater.from(context);
    }

    public void setDropDownViewTheme(@Nullable Resources$Theme resources$Theme) {
        if (resources$Theme == null) {
            this.mDropDownInflater = null;
        } else if (resources$Theme == this.mContext.getTheme()) {
            this.mDropDownInflater = this.mInflater;
        } else {
            this.mDropDownInflater = LayoutInflater.from(new ContextThemeWrapper(this.mContext, resources$Theme));
        }
    }

    @Nullable
    public Resources$Theme getDropDownViewTheme() {
        if (this.mDropDownInflater == null) {
            return null;
        }
        return this.mDropDownInflater.getContext().getTheme();
    }

    @NonNull
    public LayoutInflater getDropDownViewInflater() {
        return this.mDropDownInflater != null ? this.mDropDownInflater : this.mInflater;
    }
}
