package android.support.v7.widget;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
interface ViewBoundsCheck$Callback {
    View getChildAt(int i);

    int getChildCount();

    int getChildEnd(View view);

    int getChildStart(View view);

    View getParent();

    int getParentEnd();

    int getParentStart();
}
