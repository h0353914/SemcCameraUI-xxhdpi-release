package com.sonyericsson.android.camera.controller.album;

import com.sonyericsson.album.fastview.FastViewManager$OnPrewarmedListener;
import com.sonyericsson.android.camera.util.CamLog;

class AlbumPreloader$1 implements FastViewManager$OnPrewarmedListener {
    final /* synthetic */ AlbumPreloader this$0;

    AlbumPreloader$1(AlbumPreloader albumPreloader) {
        this.this$0 = albumPreloader;
    }

    @Override // com.sonyericsson.album.fastview.FastViewManager$OnPrewarmedListener
    public void onPrewarmed() {
        if (CamLog.VERBOSE) {
            CamLog.d("Prewarm album");
        }
        if (AlbumPreloader.access$100(this.this$0)) {
            if (CamLog.VERBOSE) {
                CamLog.d("Activity is already stopped.");
            }
            AlbumPreloader.access$200(this.this$0).cooldown();
        }
    }
}
