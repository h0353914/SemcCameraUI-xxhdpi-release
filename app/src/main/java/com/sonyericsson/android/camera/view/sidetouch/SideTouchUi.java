package com.sonyericsson.android.camera.view.sidetouch;

import android.content.Context;
import android.graphics.Point;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import com.sonyericsson.android.camera.view.ViewFinderImpl$AutoReviewContentReceiverProxy;
import com.sonyericsson.android.camera.view.ViewFinderImpl$RecordingTimeReceiverProxy;
import com.sonyericsson.android.camera.view.ViewFinderImpl$SideTouchUiButtonListenerFactory;
import com.sonyericsson.android.camera.view.ViewFinderImpl$ZoomBarUpdateProxy;

/* JADX INFO: loaded from: classes.dex */
public class SideTouchUi {
    private ViewFinderImpl$AutoReviewContentReceiverProxy mAutoReviewProxy;
    private ViewFinderImpl$SideTouchUiButtonListenerFactory mButtonListenerFactory;
    private final SparseArray<SideTouchUi$IconLayer> mIconLayer;
    private final boolean mIsOneShot;
    private ViewGroup mMovableArea;
    private final SideTouchUi$Icon$OnDetachedListener mOnDetachedListener;
    private int mOrientation;
    private ViewFinderImpl$RecordingTimeReceiverProxy mRecordingTimeReceiverProxy;
    private ViewFinderImpl$ZoomBarUpdateProxy mZoomBarUpdateProxy;

    static /* synthetic */ void access$000(SideTouchUi sideTouchUi, int i) {
        sideTouchUi.destroyIcon(i);
    }

    static /* synthetic */ void access$100(SideTouchUi sideTouchUi, int i) {
        sideTouchUi.attemptLayerFocusChange(i);
    }

    static /* synthetic */ SparseArray access$200(SideTouchUi sideTouchUi) {
        return sideTouchUi.mIconLayer;
    }

    public SideTouchUi(ViewGroup viewGroup) {
        this(viewGroup, false);
    }

    public SideTouchUi(ViewGroup viewGroup, boolean z) {
        this.mIconLayer = new SparseArray<>();
        this.mOnDetachedListener = new SideTouchUi$1(this);
        this.mMovableArea = viewGroup;
        this.mIsOneShot = z;
    }

    public void setScreenButtonListenerFactory(ViewFinderImpl$SideTouchUiButtonListenerFactory viewFinderImpl$SideTouchUiButtonListenerFactory) {
        this.mButtonListenerFactory = viewFinderImpl$SideTouchUiButtonListenerFactory;
    }

    public void setZoomBarUpdateProxy(ViewFinderImpl$ZoomBarUpdateProxy viewFinderImpl$ZoomBarUpdateProxy) {
        this.mZoomBarUpdateProxy = viewFinderImpl$ZoomBarUpdateProxy;
    }

    public void setRecordingTimeReceiverProxy(ViewFinderImpl$RecordingTimeReceiverProxy viewFinderImpl$RecordingTimeReceiverProxy) {
        this.mRecordingTimeReceiverProxy = viewFinderImpl$RecordingTimeReceiverProxy;
    }

    public void setAutoReviewProxy(ViewFinderImpl$AutoReviewContentReceiverProxy viewFinderImpl$AutoReviewContentReceiverProxy) {
        this.mAutoReviewProxy = viewFinderImpl$AutoReviewContentReceiverProxy;
    }

    public void setUiOrientation(int i) {
        this.mOrientation = i;
        for (int i2 = 0; i2 < this.mIconLayer.size(); i2++) {
            SideTouchUi$IconLayer sideTouchUi$IconLayerValueAt = this.mIconLayer.valueAt(i2);
            if (sideTouchUi$IconLayerValueAt != null && SideTouchUi$IconLayer.access$400(sideTouchUi$IconLayerValueAt)) {
                SideTouchUi$IconLayer.access$300(sideTouchUi$IconLayerValueAt).setUiOrientation(this.mOrientation);
            }
        }
    }

    public boolean showIcon() {
        for (int i = 0; i < this.mIconLayer.size(); i++) {
            SideTouchUi$IconLayer sideTouchUi$IconLayerValueAt = this.mIconLayer.valueAt(i);
            if (SideTouchUi$IconLayer.access$500(sideTouchUi$IconLayerValueAt)) {
                SideTouchUi$IconLayer.access$300(sideTouchUi$IconLayerValueAt).show();
                return true;
            }
        }
        return false;
    }

    public boolean containsIn(SideTouchUi$Type... sideTouchUi$TypeArr) {
        for (SideTouchUi$Type sideTouchUi$Type : sideTouchUi$TypeArr) {
            if (compareTo(sideTouchUi$Type)) {
                return true;
            }
        }
        return false;
    }

    public boolean containsAll(SideTouchUi$Type... sideTouchUi$TypeArr) {
        for (SideTouchUi$Type sideTouchUi$Type : sideTouchUi$TypeArr) {
            if (!compareTo(sideTouchUi$Type)) {
                return false;
            }
        }
        return true;
    }

    public void attachIcon(SideTouchUi$Type sideTouchUi$Type, Point point) {
        SideTouchUi$Icon sideTouchUiIcon$CountDownIcon;
        Context context = this.mMovableArea.getContext();
        switch (SideTouchUi$2.$SwitchMap$com$sonyericsson$android$camera$view$sidetouch$SideTouchUi$Type[sideTouchUi$Type.ordinal()]) {
            case 1:
            case 2:
                sideTouchUiIcon$CountDownIcon = new SideTouchUiIcon$CountDownIcon(context);
                break;
            case 3:
                sideTouchUiIcon$CountDownIcon = new SideTouchUiIcon$SelfTimerCancelIcon(context, this.mOrientation, this.mButtonListenerFactory);
                break;
            case 4:
                sideTouchUiIcon$CountDownIcon = new SideTouchUiIcon$AutoReviewIcon(context, this.mAutoReviewProxy);
                sideTouchUiIcon$CountDownIcon.setOnDetachedListener(this.mOnDetachedListener);
                break;
            case 5:
                sideTouchUiIcon$CountDownIcon = new SideTouchUiIcon$ZoomIcon(context, this.mZoomBarUpdateProxy);
                sideTouchUiIcon$CountDownIcon.setOnDetachedListener(this.mOnDetachedListener);
                break;
            case 6:
                if (!this.mIsOneShot) {
                    sideTouchUiIcon$CountDownIcon = new SideTouchUiIcon$RecordingIcon(context, this.mOrientation, this.mButtonListenerFactory, this.mRecordingTimeReceiverProxy);
                } else {
                    sideTouchUiIcon$CountDownIcon = new SideTouchUiIcon$RestrictedRecordingIcon(context, this.mOrientation, this.mButtonListenerFactory, this.mRecordingTimeReceiverProxy);
                }
                break;
            case 7:
                sideTouchUiIcon$CountDownIcon = new SideTouchUiIcon$RestrictedRecordingIcon(context, this.mOrientation, this.mButtonListenerFactory, this.mRecordingTimeReceiverProxy);
                break;
            case 8:
                if (!this.mIsOneShot) {
                    sideTouchUiIcon$CountDownIcon = new SideTouchUiIcon$RecordingPauseIcon(context, this.mOrientation, this.mButtonListenerFactory, this.mRecordingTimeReceiverProxy);
                } else {
                    sideTouchUiIcon$CountDownIcon = new SideTouchUiIcon$RestrictedRecordingPauseIcon(context, this.mOrientation, this.mButtonListenerFactory, this.mRecordingTimeReceiverProxy);
                }
                break;
            case 9:
                sideTouchUiIcon$CountDownIcon = new SideTouchUiIcon$RestrictedRecordingPauseIcon(context, this.mOrientation, this.mButtonListenerFactory, this.mRecordingTimeReceiverProxy);
                break;
            case 10:
                SideTouchUiIcon$TransparentCoverIcon sideTouchUiIcon$TransparentCoverIcon = new SideTouchUiIcon$TransparentCoverIcon(context);
                sideTouchUiIcon$TransparentCoverIcon.setOnDetachedListener(this.mOnDetachedListener);
                sideTouchUiIcon$CountDownIcon = sideTouchUiIcon$TransparentCoverIcon;
                point = new Point(0, 0);
                break;
            default:
                return;
        }
        attachInternal(sideTouchUiIcon$CountDownIcon, point, sideTouchUi$Type);
    }

    public boolean detachTo(SideTouchUi$Type sideTouchUi$Type) {
        if (!compareTo(sideTouchUi$Type)) {
            return false;
        }
        detachIcon(sideTouchUi$Type.layer);
        return true;
    }

    private void detachIcon(int i) {
        SideTouchUi$Icon icon = getIcon(i);
        if (icon == null) {
            return;
        }
        icon.detach(this.mMovableArea);
    }

    public void destroyIcon() {
        for (int i = 0; i < this.mIconLayer.size(); i++) {
            destroyIcon(this.mIconLayer.keyAt(i));
        }
    }

    private void destroyIcon(int i) {
        SideTouchUi$IconLayer sideTouchUi$IconLayer = this.mIconLayer.get(i);
        removeIconView(i);
        SideTouchUi$IconLayer.access$600(sideTouchUi$IconLayer);
    }

    public boolean destroyTo(SideTouchUi$Type sideTouchUi$Type) {
        if (!compareTo(sideTouchUi$Type)) {
            return false;
        }
        destroyIcon(sideTouchUi$Type.layer);
        return true;
    }

    private boolean compareTo(SideTouchUi$Type sideTouchUi$Type) {
        return getIconType(sideTouchUi$Type.layer) == sideTouchUi$Type;
    }

    private SideTouchUi$Type getIconType(int i) {
        if (this.mIconLayer.get(i) == null) {
            return null;
        }
        return SideTouchUi$IconLayer.access$700(this.mIconLayer.get(i));
    }

    private SideTouchUi$Icon getIcon(int i) {
        if (this.mIconLayer.get(i) == null) {
            return null;
        }
        return SideTouchUi$IconLayer.access$300(this.mIconLayer.get(i));
    }

    private Point getAttachPoint(int i) {
        if (this.mIconLayer.get(i) == null) {
            return null;
        }
        return SideTouchUi$IconLayer.access$800(this.mIconLayer.get(i));
    }

    private SideTouchUi$IconLayer getIconLayer(int i) {
        SideTouchUi$IconLayer sideTouchUi$IconLayer = this.mIconLayer.get(i);
        if (sideTouchUi$IconLayer != null) {
            return sideTouchUi$IconLayer;
        }
        SideTouchUi$IconLayer sideTouchUi$IconLayer2 = new SideTouchUi$IconLayer(null);
        this.mIconLayer.append(i, sideTouchUi$IconLayer2);
        return sideTouchUi$IconLayer2;
    }

    private boolean attachInternal(SideTouchUi$Icon sideTouchUi$Icon, Point point, SideTouchUi$Type sideTouchUi$Type) {
        Point attachPoint = getAttachPoint(sideTouchUi$Type.layer);
        if (point == null && attachPoint == null) {
            return false;
        }
        removeIconView(sideTouchUi$Type.layer);
        SideTouchUi$IconLayer iconLayer = getIconLayer(sideTouchUi$Type.layer);
        SideTouchUi$IconLayer.access$302(iconLayer, sideTouchUi$Icon);
        SideTouchUi$IconLayer.access$702(iconLayer, sideTouchUi$Type);
        if (point == null) {
            SideTouchUi$IconLayer.access$802(iconLayer, attachPoint);
        } else {
            SideTouchUi$IconLayer.access$802(iconLayer, point);
        }
        View viewAttach = sideTouchUi$Icon.attach(this.mMovableArea, SideTouchUi$IconLayer.access$800(iconLayer));
        if (viewAttach != null) {
            viewAttach.setTag(sideTouchUi$Icon);
        }
        sideTouchUi$Icon.setUiOrientation(this.mOrientation);
        requestLayerFocus(sideTouchUi$Type.layer);
        return true;
    }

    private void removeIconView(int i) {
        View viewFindViewWithTag;
        SideTouchUi$Icon icon = getIcon(i);
        if (icon == null || (viewFindViewWithTag = this.mMovableArea.findViewWithTag(icon)) == null) {
            return;
        }
        this.mMovableArea.removeView(viewFindViewWithTag);
    }

    private void requestLayerFocus(int i) {
        for (int i2 = 0; i2 < this.mIconLayer.size(); i2++) {
            int iKeyAt = this.mIconLayer.keyAt(i2);
            SideTouchUi$IconLayer sideTouchUi$IconLayerValueAt = this.mIconLayer.valueAt(i2);
            if (sideTouchUi$IconLayerValueAt != null && SideTouchUi$IconLayer.access$400(sideTouchUi$IconLayerValueAt)) {
                SideTouchUi$IconLayer.access$502(sideTouchUi$IconLayerValueAt, i == iKeyAt);
                SideTouchUi$IconLayer.access$300(sideTouchUi$IconLayerValueAt).onFocusChanged(SideTouchUi$IconLayer.access$500(sideTouchUi$IconLayerValueAt));
            }
        }
    }

    private void attemptLayerFocusChange(int i) {
        SideTouchUi$IconLayer sideTouchUi$IconLayerSearchNextIconLayer = searchNextIconLayer(i);
        if (sideTouchUi$IconLayerSearchNextIconLayer == null || !SideTouchUi$IconLayer.access$400(sideTouchUi$IconLayerSearchNextIconLayer)) {
            return;
        }
        SideTouchUi$IconLayer.access$502(sideTouchUi$IconLayerSearchNextIconLayer, true);
        SideTouchUi$IconLayer.access$300(sideTouchUi$IconLayerSearchNextIconLayer).onFocusChanged(SideTouchUi$IconLayer.access$500(sideTouchUi$IconLayerSearchNextIconLayer));
    }

    private SideTouchUi$IconLayer searchNextIconLayer(int i) {
        SideTouchUi$IconLayer sideTouchUi$IconLayerFindNextIconLayer = findNextIconLayer(i, true);
        return (sideTouchUi$IconLayerFindNextIconLayer == null || !SideTouchUi$IconLayer.access$400(sideTouchUi$IconLayerFindNextIconLayer)) ? findNextIconLayer(i, false) : sideTouchUi$IconLayerFindNextIconLayer;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private SideTouchUi$IconLayer findNextIconLayer(int i, boolean z) {
        for (int i2 = 0; i2 < this.mIconLayer.size(); i2++) {
            int iKeyAt = this.mIconLayer.keyAt(i2);
            if (z) {
                if (i < iKeyAt) {
                    i = iKeyAt;
                }
            } else if (iKeyAt < i) {
            }
        }
        return this.mIconLayer.get(i);
    }
}
