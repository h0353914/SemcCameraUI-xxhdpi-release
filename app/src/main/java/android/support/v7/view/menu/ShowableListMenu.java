package android.support.v7.view.menu;

import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.widget.ListView;

/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
public interface ShowableListMenu {
    void dismiss();

    ListView getListView();

    boolean isShowing();

    void show();
}
