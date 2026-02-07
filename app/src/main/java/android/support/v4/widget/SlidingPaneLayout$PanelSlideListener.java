package android.support.v4.widget;

import android.support.annotation.NonNull;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public interface SlidingPaneLayout$PanelSlideListener {
    void onPanelClosed(@NonNull View view);

    void onPanelOpened(@NonNull View view);

    void onPanelSlide(@NonNull View view, float f);
}
