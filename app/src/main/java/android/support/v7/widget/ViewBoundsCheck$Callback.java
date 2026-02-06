package android.support.v7.widget;

import android.view.View;

interface ViewBoundsCheck$Callback {
    View getChildAt(int i);

    int getChildCount();

    int getChildEnd(View view);

    int getChildStart(View view);

    View getParent();

    int getParentEnd();

    int getParentStart();
}
