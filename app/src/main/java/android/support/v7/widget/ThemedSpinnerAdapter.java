package android.support.v7.widget;

import android.content.res.Resources$Theme;
import android.support.annotation.Nullable;
import android.widget.SpinnerAdapter;

/* JADX INFO: loaded from: classes.dex */
public interface ThemedSpinnerAdapter extends SpinnerAdapter {
    @Nullable
    Resources$Theme getDropDownViewTheme();

    void setDropDownViewTheme(@Nullable Resources$Theme resources$Theme);
}
