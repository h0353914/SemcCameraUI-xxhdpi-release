package com.sonyericsson.android.camera.view;

import com.sonyericsson.android.camera.view.baselayout.zoombar.Zoombar;
import java.util.List;

public class ViewFinderImpl$ZoomBarUpdateProxy {
    private Zoombar mZoomBar;

    public void bindZoomBar(Zoombar zoombar) {
        this.mZoomBar = zoombar;
    }

    protected int update(List<Integer> list, int i) {
        this.mZoomBar.setZoomRatios(list);
        return this.mZoomBar.zoom(i);
    }
}
