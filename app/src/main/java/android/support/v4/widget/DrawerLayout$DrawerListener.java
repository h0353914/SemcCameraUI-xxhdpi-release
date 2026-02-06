package android.support.v4.widget;

import android.support.annotation.NonNull;
import android.view.View;

public interface DrawerLayout$DrawerListener {
    void onDrawerClosed(@NonNull View view);

    void onDrawerOpened(@NonNull View view);

    void onDrawerSlide(@NonNull View view, float f);

    void onDrawerStateChanged(int i);
}
