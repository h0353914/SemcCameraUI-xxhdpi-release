package com.sonyericsson.android.camera.view;

import com.sonyericsson.android.camera.configuration.parameters.Geotag;
import com.sonyericsson.cameracommon.mediasaving.location.LocationAcquiredListener;

class ViewFinderImpl$LocationAcquiredListenerImpl implements LocationAcquiredListener {
    final /* synthetic */ ViewFinderImpl this$0;

    private ViewFinderImpl$LocationAcquiredListenerImpl(ViewFinderImpl viewFinderImpl) {
        this.this$0 = viewFinderImpl;
    }

    /* synthetic */ ViewFinderImpl$LocationAcquiredListenerImpl(ViewFinderImpl viewFinderImpl, ViewFinderImpl$1 viewFinderImpl$1) {
        this(viewFinderImpl);
    }

    @Override // com.sonyericsson.cameracommon.mediasaving.location.LocationAcquiredListener
    public void onAcquired(boolean z, boolean z2) {
        if (this.this$0.isHeadUpDisplayReady()) {
            ViewFinderImpl.access$300(this.this$0).getGeoTagIndicator().isAcquired(z || z2);
        }
    }

    @Override // com.sonyericsson.cameracommon.mediasaving.location.LocationAcquiredListener
    public void onLost() {
        if (this.this$0.isHeadUpDisplayReady()) {
            ViewFinderImpl.access$300(this.this$0).getGeoTagIndicator().isAcquired(false);
        }
    }

    @Override // com.sonyericsson.cameracommon.mediasaving.location.LocationAcquiredListener
    public void onDisabled() {
        ViewFinderImpl.access$500(this.this$0).getStoredSettings().getUserSettings().set(Geotag.OFF);
        ViewFinderImpl.access$300(this.this$0).getGeoTagIndicator().set(false);
        ViewFinderImpl.access$500(this.this$0).readLocationSettings();
    }
}
